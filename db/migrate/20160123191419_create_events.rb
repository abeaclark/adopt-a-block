class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :body
      t.datetime :start
      t.datetime :end
      t.integer :block_id

      t.timestamps null: false
    end
  end
end
