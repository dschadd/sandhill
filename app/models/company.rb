class Company < ApplicationRecord
  has_many :company_portfolios
  has_many :portfolios
  has_many :company_follows
  has_many :users, through: :company_follows
end
