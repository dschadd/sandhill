class AddCashToPortfolio < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :initial_cash, :integer
    add_column :portfolios, :current_cash, :integer
    add_column :company_portfolios, :purchase_price, :integer
    add_column :crypto_portfolios, :initial, :integer
  end
end
