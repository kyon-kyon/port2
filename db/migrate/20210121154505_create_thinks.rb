class CreateThinks < ActiveRecord::Migration[5.2]
  def change
    create_table :thinks do |t|

      t.timestamps
    end
  end
end
