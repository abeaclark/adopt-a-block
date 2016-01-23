class CreateJoinTableBlocksBusinesses < ActiveRecord::Migration
  def change
    create_join_table :blocks, :businesses do |t|
      # t.index [:block_id, :business_id]
      # t.index [:business_id, :block_id]
      t.boolean :leader
    end
  end
end
