class Users::PasswordsController < Devise::PasswordsController
  protected
    def after_resetting_password_path_for(users)
    	'/posts'
    end

end