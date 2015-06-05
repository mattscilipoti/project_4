class User < ActiveRecord::Base
  ratyrate_rater
  # ratyrate_rateable "rate"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	# has_many :posts
	has_one :profile
	accepts_nested_attributes_for :profile
end																																	
