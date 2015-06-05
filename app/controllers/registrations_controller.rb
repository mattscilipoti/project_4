class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(users)
    '/profiles/new'
  end
  def after_update_path_for(users)
  	'/profiles/:id/edit'
  end
end