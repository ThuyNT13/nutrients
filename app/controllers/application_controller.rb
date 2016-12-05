class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # refactor?

  def logged_in?
    session[:current_user_id] != nil
  end

  private

  def current_user
    @_current_user ||= session[:current_user_id] &&
      User.find_by(id: session[:current_user_id])
  end

end
