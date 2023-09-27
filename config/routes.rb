Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", :controller => "directors", :action => "all_directors")
  get("/directors/youngest", :controller => "directors", :action => "youngest")
  get("/directors/eldest", :controller => "directors", :action => "eldest")
end
