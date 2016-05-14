class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to(user)
    else
      flash[:error] = 'Invalid email or password'
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:success] = 'Logged out'
    redirect_to(log_in_path)
  end
end
