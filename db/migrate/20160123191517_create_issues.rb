class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :user_id
      t.string :title
      t.string :body
      t.string :status
      t.integer :block_id

      t.timestamps null: false
    end
  end
end
