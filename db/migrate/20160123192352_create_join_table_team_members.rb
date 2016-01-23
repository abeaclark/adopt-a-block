class CreateJoinTableTeamMembers < ActiveRecord::Migration
  def change
    create_join_table :blocks, :users do |t|
      # t.index [:block_id, :user_id]
      # t.index [:user_id, :block_id]
      t.boolean :leader
    end
  end
end
