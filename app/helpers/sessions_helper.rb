module SessionsHelper
  def logged_in?
    !current_user.nil?
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def log_in(user)
    raise 'User already logged in' if logged_in?
    session[:user_id] = user.id
  end

  def log_out
    raise 'User not logged in' unless logged_in?
    session.delete(:user_id)
  end
end
