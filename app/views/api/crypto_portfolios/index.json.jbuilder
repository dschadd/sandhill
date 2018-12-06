json.array! @crypto_portfolios.each do |crypto_portfolio|
  json.crypto_id crypto_portfolio.crypto_id
  json.user_id crypto_portfolio.user_id
  json.portfolio_id crypto_portfolio.portfolio_id
  json.shares crypto_portfolio.count
  json.purchase_price crypto_portfolio.purchase_price
end
