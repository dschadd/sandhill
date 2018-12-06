class ChangeInitialToPurchasePrice < ActiveRecord::Migration[5.2]
  def change
    rename_column :crypto_portfolios, :initial, :purchase_price

  end
end
