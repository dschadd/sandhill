class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true

  has_many :portfolios
  has_many :company_portfolios
  has_many :crypto_portfolios
  has_many :company_follows
  has_many :companies, through: :company_follow
  has_many :cryptos, through: :crypto_follow
end
