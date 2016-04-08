class Quiz

def search_movies(word)
	search = Imdb::Search.new(word)
	the_movies = search.movies[0..25]
	the_movies
end



def posters(array)
	movies_with_posters = []
	array.each do |item|
		if item.poster != nil
			movies_with_posters.push(item)
		end
	end
	movies_with_posters[0..8]
end

def correct_answer(array)
	correct_answer = array.sample.year.to_i
end
end