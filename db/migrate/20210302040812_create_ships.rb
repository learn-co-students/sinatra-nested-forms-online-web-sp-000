class CreateShips < ActiveRecord::Migration[6.1]
  def change
    create_table :pirates do |t|
      t.string :name
      t.string :type
      t.string :booty
      t.integer :pirate_id
  end
end
