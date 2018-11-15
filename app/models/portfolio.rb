class Portfolio < ApplicationRecord
  belongs_to :user
  belongs_to :company
  belongs_to :crypto
  has_many :company_portfolios
  has_many :crypto_portfolios
end
