class CreateCompanyPortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :company_portfolios do |t|
      t.integer :company_id
      t.integer :user_id
      t.integer :portfolio_id
      t.integer :shares

      t.timestamps
    end
  end
end
