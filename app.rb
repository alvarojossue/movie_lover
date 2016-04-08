require_relative('lib/quiz_class.rb')
require "imdb"
require "sinatra"

my_quiz = Quiz.new

get "/" do
	erb :home
end

post "/movie_search" do
	@word = params[:word]
	@the_results = my_quiz.search_movies(@word)
	@results = my_quiz.posters(@the_results)
	@correct_answer = my_quiz.correct_answer(@results)
	erb :movie_results
end

post "/check_answer" do
	@answer_input = params[:answer_input]
	@correct_answer = params[:correct_answer]
	erb :correct_incorrect
end