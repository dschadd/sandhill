json.array! @companies.each do |company|
  json.id company.id
  json.name company.name
  json.ticker company.ticker
  json.followers company.company_follows
  json.image company.image
end