Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors/youngest", { :controller => "directors", :action => "max_dob" })
  get("/directors/eldest", { :controller => "directors", :action => "min_dob" })
  post("/create_director", {:controller => "directors", :action => "create"})
  get("/delete_director/:director_id", {:controller => "directors", :action => "delete"})
  post("/update_director/:director_id", {:controller => "directors", :action => "update"})

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:path_id", { :controller => "directors", :action => "show" })

  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:path_id", { :controller => "movies", :action => "show" })
  post("/create_movies", {:controller => "movies", :action => "create"})
  get("/delete_movie/:movie_id", {:controller => "movies", :action => "delete"})
  post("/update_movie/:movie_id", {:controller => "movies", :action => "update"})
  
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:path_id", { :controller => "actors", :action => "show" })
  post("/insert_actor", {:controller => "actors", :action => "create"})
  get("/delete_actor/:actor_id", {:controller => "actors", :action => "delete"})
  post("/modify_actor/:actor_id", {:controller => "actors", :action => "modify"})
end
