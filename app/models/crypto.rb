class Crypto < ApplicationRecord
  has_many :crypto_portfolios
  has_many :portfolios
  has_many :crypto_follows
  has_many :users, through: :crypto_follow

  def news
    news_response = HTTP.get("https://newsapi.org/v2/everything?q=#{name}&apiKey=#{ENV["news_api_key"]}")
    @news = news_response.parse["articles"]
    return @news
  end

  def price
    price_response = HTTP.get("https://www.alphavantage.co/query?function=DIGITAL_CURRENCY_DAILY&symbol=#{ticker}&market=USD&apikey=#{ENV["alpha_vantage_api_key"]}")
    @daily_price = price_response.parse["Time Series (Digital Currency Daily)"]
    return @daily_price
  end

  def today_price
    price_response = HTTP.get("https://www.alphavantage.co/query?function=DIGITAL_CURRENCY_DAILY&symbol=#{ticker}&market=USD&apikey=#{ENV["alpha_vantage_api_key"]}")
    t = Time.new
    today_date = t.strftime("%Y-%m-%e")
    @today_price = price_response.parse["Time Series (Digital Currency Daily)"][today_date]["4a. close (USD)"]
    return @today_price
  end
  
end
