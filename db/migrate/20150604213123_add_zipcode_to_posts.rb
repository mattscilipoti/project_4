class AddZipcodeToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :zipcode, :string
  end
end
