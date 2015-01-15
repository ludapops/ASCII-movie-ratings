require 'imdb'
require 'awesome_print'


moviesTitles = IO.read('movies.txt').split("\n")


ratings = moviesTitles.map do |title| 
	
	search_result = Imdb::Search.new(title)
	
	movie = search_result.movies[0]
	
	movie.rating
end

ap ratings

def rater(number)
	"*\n" * (number)
end

movie1_rating = ratings[0].round
movie2_rating = ratings[1].round

ghostBusters = rater(movie1_rating)
dieHard = rater(movie2_rating)

print ghostBusters
puts "\n"
puts "\n"
puts "\n"
print dieHard

class Printer 
	def initialize(array)
		@ratings_array = array
	end 

	def max
		@ratings_array.max 
	end
end 
