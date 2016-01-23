class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :unique_id
      t.string :full_name
      t.string :avatar_url
      t.string :profile_url

      t.timestamps null: false
    end
  end
end
