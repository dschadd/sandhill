class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true

  has_many :portfolios
  has_many :company_portfolios
  has_many :crypto_portfolios
  has_many :company_follows
  has_many :crypto_follows
  has_many :companies, through: :company_follows
  has_many :cryptos, through: :crypto_follows

  def full_name
    full_name = first_name + " " + last_name
  end


end
