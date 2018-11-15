class CreateCryptoFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :crypto_follows do |t|
      t.integer :user_id
      t.integer :crypto_id
      t.boolean :follow

      t.timestamps
    end
  end
end
