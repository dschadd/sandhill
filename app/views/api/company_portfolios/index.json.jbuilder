json.array! @company_portfolios.each do |company_portfolio|
  json.company_id company_portfolio.company_id
  json.user_id company_portfolio.user_id
  json.portfolio_id company_portfolio.portfolio_id
  json.shares company_portfolio.shares
  json.purchase_price company_portfolio.purchase_price
end
