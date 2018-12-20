json.first_name @user.first_name
json.last_name @user.last_name
json.email @user.email
json.portfolios @user.portfolios
json.companies @user.companies.each do |company|
  json.company_id company.id
  json.company_name company.name
  # json.company_price company.price
end
json.cryptos @user.cryptos.each do |crypto|
  json.crypto_id  crypto.id
  json.crypto_name crypto.name
  # json.crypto_price crypto.price
end