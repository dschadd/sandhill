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
    patch "/companies/:id" => "companies#update"
    delete "/companies/:id" => "companies#destroy"

    get "/cryptos" => "cryptos#index"
    post "/cryptos" => "cryptos#create"
    get "/crypto/:id" => "cryptos#show"
    patch "/cryptos/:id" => "cryptos#update" 
    delete "/cryptos/:id" => "cryptos#destroy"

    get "/company_follows" => "company_follows#index"
    post "/company_follows" => "company_follows#create"
    get "/company_follow/:id" => "company_follows#show"
    patch "/company_follows/:id" => "company_follows#update"
    delete "/company_follows/:id" => "company_follows#destroy"

    post "/sessions" => "sessions#create"

  end

end
