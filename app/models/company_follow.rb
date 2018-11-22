class CompanyFollow < ApplicationRecord
  belongs_to :company
  belongs_to :user
  belongs_to :portfolio
end
