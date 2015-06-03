class Post < ActiveRecord::Base
	belongs_to :user 
	has_many :sales, dependent: :destroy
	# change to profile username later
	def uid
    	uid = self.user.email.split('@').first
 	end

end