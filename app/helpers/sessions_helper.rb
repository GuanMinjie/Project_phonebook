module SessionsHelper

  def logged_in?
   !current_user.nil?
  end
  def log_in(user)
     session[:user_id] =user.id
  end
  def log_out
    session.delete(:user_id)
    @current_user =nil
  end
  def current_user
    @current_user = @current_user||User.where(:id=>session[:usesr_id]).first
  end

end