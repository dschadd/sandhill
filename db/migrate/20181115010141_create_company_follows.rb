class CreateCompanyFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :company_follows do |t|
      t.integer :user_id
      t.integer :company_id
      t.boolean :follow

      t.timestamps
    end
  end
end
