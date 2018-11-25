json.array! @crypto_follows.each do |crypto_follow|
  json.user_id crypto_follow.user_id
  json.crypto_id crypto_follow.crypto_id
  json.follow crypto_follow.follow
end