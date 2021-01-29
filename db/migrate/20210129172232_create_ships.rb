class CreateShips < ActiveRecord::Migration[6.1]
  def change
    create_table :ships do |s|
      s.string :name
      s.string :type
      s.string :booty
      t.integer :pirate_id
  end
end
