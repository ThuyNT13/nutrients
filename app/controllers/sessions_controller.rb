class SessionsController < ApplicationController

  def new
    # what goes here?
  end

  def create
    if @user = User.authenticate(login_params)
      session[:current_user_id] = @user.id
      redirect_to @user
    else
      render new_user_path, flash: "Invalid username or password"
    end
  end

  def destroy
    @_current_user = session[:current_user_id] = nil
    redirect_to "home#index", flash: "You have successfully logged out."
  end

  private

  def login_params
    params.require(:user).permit(:username, :password)
  end

end
