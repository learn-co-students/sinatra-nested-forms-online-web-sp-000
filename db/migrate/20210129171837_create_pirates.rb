class CreatePirates < ActiveRecord::Migration[6.1]
  def change
    create_table :pirates do |p|
      p.string :name
      p.string :weight
      p.string :height 
  end
end
