class Api::CompaniesController < ApplicationController

  # before_action :authenticate_user

  def index
    @companies = Company.all
    render "index.json.jbuilder"
  end

  def create
    @company = Company.new(
      name: params[:name],
      ticker: params[:ticker]
      )
    if @company.save
      render "show.json.jbuilder"
    else
      render json: {errors: @company.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    alpha_vantage_api_key = "U7T6GRALT9VHP9AU"
    news_api_key = "9152dbd2c18041bda55e32ac468e317d"
    @company = Company.find_by(id: params[:id])
    price_response = HTTP.get("https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=#{@company.ticker}&apikey=#{alpha_vantage_api_key}")
    @daily_price = price_response.parse["Time Series (Daily)"]
    news_response = HTTP.get("https://newsapi.org/v2/everything?q=#{@company.name}&apiKey=#{news_api_key}")
    @news = news_response.parse["articles"]
    render "show.json.jbuilder"
  end

  def update
    @company = Company.find_by(id: params[:id])
    @company.name = params[:name] || @company.name
    @company.ticker = params[:ticker] || @company.ticker
    if @company.save
      render "show.json.jbuilder"
    else
      render json: {errors: @company.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @company = Company.find_by(id: params[:id])
    @company.destroy
  end
  
end
