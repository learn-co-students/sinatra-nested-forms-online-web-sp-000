class CreatePirates < ActiveRecord::Migration
  def change
    create_table :pirates do |t|
      t.string :name 
      t.string :height
      t.string :weight
    end
  end
end
