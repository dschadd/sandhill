json.array! @portfolios do |portfolio|
  json.id portfolio.id
  json.user_id portfolio.user_id
  json.name portfolio.name
  json.private portfolio.private
  json.initial_cash @portfolio.initial_cash
  json.current_cash @portfolio.current_cash
end