class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def set_user
    if current_user
      @user ||= current_user
    else
      redirect_to new_user_path
    end
  end

end
