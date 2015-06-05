class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.belongs_to :user
    	
    	t.string :username
    	t.text :bio
    	t.string :location
    end
  end
end
