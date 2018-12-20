
json.id @portfolio.id
json.first_name @portfolio.user.first_name
json.name @portfolio.name
json.private @portfolio.private
json.companies @portfolio.companies.each do |company|
  json.portfolio_data company.company_portfolios
  json.company_price company.today_price
  json.company_name company.name
end
json.cryptos @portfolio.cryptos.each do |crypto|
  json.portfolio_data crypto.crypto_portfolios
  json.crypto_price crypto.today_price
  json.crypto_name crypto.name
end
json.initial_cash @portfolio.initial_cash
json.current_cash @portfolio.current_cash 