class LoginController < ApplicationController
  def index
    puts 'ddd'
  end
  
  def check_login
    user = User.find_by(user_name: params[:user_name], password: params[:password])
    if user
      redirect_to users_path, notice: 'Login successfully.'
    else
      # @notice = 'Login error.'
      flash[:error] = 'Login error !'
      render :index
    end
  end
end
