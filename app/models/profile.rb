class Nextdoor < ActiveRecord::Base
	belongs_to :user, :class_name => "User", foreign_key => "uid"
end