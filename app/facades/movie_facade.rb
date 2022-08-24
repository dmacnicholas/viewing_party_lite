class MovieFacade

  def self.create_top_movies
    movies = MovieService.get_top_movies
    movies[0..49].map do |movie|
      Movie.new(movie)
    end
  end

end