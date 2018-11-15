class CreateCryptoPortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :crypto_portfolios do |t|
      t.integer :crypto_id
      t.integer :user_id
      t.integer :portfolio_id
      t.decimal :count

      t.timestamps
    end
  end
end
