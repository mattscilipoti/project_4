class Post < ActiveRecord::Base
	ratyrate_rateable 'taste'
	belongs_to :profile
	has_many :comments
	#has_many :sales, dependent: :destroy
	# change to profile username later
	def uid
    	uid = self.user.email.split('@').first
 	end
	# geocoded_by :zipcode,
 #  		:latitude => :lat, :longitude => :lon
	# 	after_validation :geocode
end