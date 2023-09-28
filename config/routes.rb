Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", :controller => "directors", :action => "all_directors")
  get("/directors/youngest", :controller => "directors", :action => "youngest")
  get("/directors/eldest", :controller => "directors", :action => "eldest")
  get("/movies", :controller => "movies", :action => "all_movies")
  get("/movies/:id", :controller => "movies", :action => "movie_details")
  get("/actors", :controller => "actors", :action => "all_actors")
  get("/actors/:id", :controller => "actors", :action => "actor_details")
  get("/directors/:id", :controller => "directors", :action => "director_details")
end
