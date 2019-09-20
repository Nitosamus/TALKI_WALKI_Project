class ApplicationController < ActionController::Base
<<<<<<< HEAD
	protect_from_forgery with: :null_session
	before_action :authenticate_user!

	before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :username])
  end
||||||| merged common ancestors
protect_from_forgery with: :null_session
=======
	protect_from_forgery with: :null_session
>>>>>>> 7a33d3e1445b146e7f9fb8ab00f174ea6316706b
end
