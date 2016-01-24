class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :website
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
