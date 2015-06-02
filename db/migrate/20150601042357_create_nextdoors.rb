class CreateNextdoors < ActiveRecord::Migration
  def change
    create_table :nextdoors do |t|
      t.string :chef
      t.string :title
      t.text :notes

      t.timestamps null: false
    end
  end
end
