json.array! @cryptos.each do |crypto|
  json.id crypto.id
  json.name crypto.name
  json.ticker crypto.ticker
  json.image crypto.image
end