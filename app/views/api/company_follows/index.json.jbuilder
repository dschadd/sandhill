json.array! @company_follows.each do |company_follow|
  json.user_id company_follow.user_id
  json.company_id company_follow.company_id
  json.follow company_follow.follow
end