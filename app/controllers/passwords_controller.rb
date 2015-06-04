class Users::PasswordsController < Devise::PasswordsController
  protected
    def after_resetting_password_path_for(users)
    	'/posts'
    end
  	def after_sign_in_path_for(users)
    	'/posts'
  	end

end