class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user
    	t.string :name
      t.text :description
     	t.decimal :price
      t.datetime "created_at", null: false
    	t.datetime "updated_at", null: false
      t.timestamps null: false
    end
  end
end
