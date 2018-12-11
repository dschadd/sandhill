class Company < ApplicationRecord
  has_many :company_portfolios
  has_many :portfolios
  has_many :company_follows
  has_many :users, through: :company_follows

  def news
    news_response = HTTP.get("https://newsapi.org/v2/everything?q=#{name}&apiKey=#{ENV["news_api_key"]}")
    @news = news_response.parse["articles"]
    return @news
  end

  def price
    price_response = HTTP.get("https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=#{ticker}&apikey=#{ENV["alpha_vantage_api_key"]}")
    @daily_price = price_response.parse["Time Series (Daily)"]
    return @daily_price
  end

  def today_price
    price_response = HTTP.get("https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=#{ticker}&apikey=#{ENV["alpha_vantage_api_key"]}")
    t = Time.new
    today_date = t.strftime("%Y-%m-%e")
    @today_price = price_response.parse["Time Series (Daily)"][today_date]["4. close"]
    return @today_price
  end

end
