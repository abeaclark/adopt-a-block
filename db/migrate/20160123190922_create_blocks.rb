class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :block_num
      t.string :name

      t.timestamps null: false
    end
  end
end
