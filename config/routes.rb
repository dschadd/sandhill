Rails.application.routes.draw do

  namespace :api do

    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/user/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/portfolios" => "portfolios#index"
    post "/portfolios" => "portfolios#create"
    get "/portfolio/:id" => "portfolios#show"
    patch "/portfolios/:id" => "portfolios#update"
    delete "/portfolios/:id" => "portfolios#destroy"

    get "/companies" => "companies#index"
    post "/companies" => "companies#create"
    get "/company/:id" => "companies#show"
    patch "/companies/:id" => "companies#show"
    delete "/companies/:id" => "companies#destroy"

    post "/sessions" => "sessions#create"

  end

end
