class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.integer :user_id
      t.boolean :private
      t.string :name

      t.timestamps
    end
  end
end
