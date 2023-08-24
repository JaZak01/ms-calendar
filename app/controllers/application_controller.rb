class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    user_calendar_path # Redirect to the user calendar view
  end
end
