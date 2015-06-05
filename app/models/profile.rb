class Profile < ActiveRecord::Base
	ratyrate_rater

	belongs_to :user
	has_many :posts
	has_many :comments
	# has_many :comments
	# geocoded_by :ip_address,
    #  	:latitude => :lat, :longitude => :lon
	# 	after_validation :geocode
	# geocoded_by :zipcode,
 #  		:latitude => :lat, :longitude => :lon
	# 	after_validation :geocode
end

 	