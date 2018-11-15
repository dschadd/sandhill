Rails.application.routes.draw do

  namespace :api do

    get "/users" => "users#index"
    get "/user/:id" => "users#show"
    post "/users" => "users#create"

  end

end
