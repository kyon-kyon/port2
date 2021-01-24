class CreateThinks < ActiveRecord::Migration[5.2]
  def change
    create_table :thinks do |t|
      t.integer :category_id
      t.string :think_title
      t.text :think_body
      
      
      t.timestamps
    end
  end
end
