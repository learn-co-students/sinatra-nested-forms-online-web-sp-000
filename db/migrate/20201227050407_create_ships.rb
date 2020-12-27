class CreateShips < ActiveRecord::Migration[6.1]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :type
      t.string :booty 
      t.integer :pirate_id
      t.timestamps
    end    
  end
end
