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
movie3_rating = ratings[2].round


ghostBusters = rater(movie1_rating)
dieHard = rater(movie2_rating)
titanic = rater(movie3_rating)


# puts "\n"
# puts "\n"
# puts "\n"


class Printer 
	def initialize(array)
		@ratings_array = array
		@max = array.max
		@max = @max.round  
	end 

	def line_printer(second_index)
		

    	line = ""

    	# puts "Line ##{second_index}"
    	@ratings_array.each do |movieRRRRating|
    		# puts "    #{movieRRRRating} #{movieRRRRating < second_index}"
    		if movieRRRRating < second_index
    			line += " "
    		else 
    			line += "*"
    		end

    	end
    	return line 

    end



	

	def graph_printer
		(1..@max).each do |number|
    		# stuff with number
    		second_index = @max - number
    		puts line_printer(second_index)
    	end

	end
end 

x = Printer.new(ratings)
x.graph_printer
# #############################
# # if movie rating is less than outer loop index print space


# start at zero count up to max 
# i < max + 1

# for number in 1..10
#     # stuff
# end









