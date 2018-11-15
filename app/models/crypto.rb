class Crypto < ApplicationRecord
  has_many :crypto_portfolios
  has_many :portfolios
  has_many :crypto_follows
  has_many :users, through: :crypto_follow
end
