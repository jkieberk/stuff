Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "login#authenticate"
  
  get "/dashboard", to: "dashboard#index"

  get "/create-example-class", to: "dashboard#example_new"

  get "/delete-course/:id", to: "dashboard#delete_course"

  get "/example-count/:courses_id/:users_id", to: "dashboard#create_counter"

  get "/add", to: "courses#add"

  post "/save", to: "courses#save"
end
