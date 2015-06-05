class AddIpaddressToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :ip_address, :string
  end
end
