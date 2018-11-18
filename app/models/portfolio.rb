class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :company_portfolios
  has_many :crypto_portfolios
end
