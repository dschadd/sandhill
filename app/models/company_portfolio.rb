class CompanyPortfolio < ApplicationRecord
  belongs_to :company
  belongs_to :portfolio
  belongs_to :user
end
