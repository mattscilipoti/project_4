class ProfilesControllers < Devise::RegistrationsController
	belongs_to :user
	
end