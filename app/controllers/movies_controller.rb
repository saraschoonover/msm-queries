class MoviesController < ApplicationController
  def all_movies
    @movies = Movie.all
    
    render({ :template => "movie_template/movie"})
  end

  def movie_details
    @movie = Movie.find(params[:id])
    @director = Director.where(id: @movie.director_id).first
    
    render({ :template => "movie_template/movie_details"})
    
  end
end
