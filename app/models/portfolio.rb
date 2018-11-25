class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :company_portfolios
  has_many :crypto_portfolios
  has_many :companies, through: :company_portfolios
  has_many :cryptos, through: :crypto_portfolios
end
