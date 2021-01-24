class CreateThinkRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :think_relationships do |t|
      t.integer :think_follower_id
      t.integer :think_followed_id

      t.timestamps
    end
    
      add_index :think_relationships, :think_follower_id
      add_index :think_relationships, :think_followed_id
      add_index :think_relationships, [:think_follower_id, :think_followed_id], unique: true, :name => 'think_relationships_index'
  end
end
