class AddImageToCryptos < ActiveRecord::Migration[5.2]
  def change
    add_column :cryptos, :image, :string
  end
end
