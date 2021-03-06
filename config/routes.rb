Rails.application.routes.draw do

  post "twilio/text" => "twilio_controller#text"

  namespace :api do

    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/portfolios" => "portfolios#index"
    post "/portfolios" => "portfolios#create"
    get "/portfolios/:id" => "portfolios#show"
    patch "/portfolios/:id" => "portfolios#update"
    delete "/portfolios/:id" => "portfolios#destroy"

    get "/companies" => "companies#index"
    post "/companies" => "companies#create"
    get "/companies/:id" => "companies#show"
    patch "/companies/:id" => "companies#update"
    delete "/companies/:id" => "companies#destroy"

    get "/cryptos" => "cryptos#index"
    post "/cryptos" => "cryptos#create"
    get "/cryptos/:id" => "cryptos#show"
    patch "/cryptos/:id" => "cryptos#update" 
    delete "/cryptos/:id" => "cryptos#destroy"

    get "/company_follows" => "company_follows#index"
    post "/company_follows" => "company_follows#create"
    get "/company_follows/:id" => "company_follows#show"
    patch "/company_follows/:id" => "company_follows#update"
    delete "/company_follows/:id" => "company_follows#destroy"

    get "/crypto_follows" => "crypto_follows#index"
    post "/crypto_follows" => "crypto_follows#create"
    get "/crypto_follows/:id" => "crypto_follows#show"
    patch "/crypto_follows/:id" => "crypto_follows#update"
    delete "/crypto_follows/:id" => "crypto_follows#destroy"

    get "/company_portfolios" => "company_portfolios#index"
    post "/company_portfolios" => "company_portfolios#create"
    get "/company_portfolios/:id" => "company_portfolios#show"
    patch "/company_portfolios" => "company_portfolios#update"
    delete "/company_portfolios" => "company_portfolios#destroy"

    get "/crypto_portfolios" => "crypto_portfolios#index"
    post "/crypto_portfolios" => "crypto_portfolios#create"
    get "/crypto_portfolios/:id" => "crypto_portfolios#show"
    patch "/crypto_portfolios" => "crypto_portfolios#update"
    delete "/crypto_portfolios" => "crypto_portfolios#destroy"

    post "/sessions" => "sessions#create"

  end

end
