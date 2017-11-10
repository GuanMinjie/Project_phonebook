class SessionsController < ApplicationController
 skip_before_action :authenticate,only: [:new,:create]
 @@sign = 0
  def new
    if logged_in?
      redirect_to   '/linkmen#index'
    else
      @sign_in = @@sign
    end
  end
  
  def create
     @user = User.where(:name=>params[:session][:name]).first
    if @user && @user.authenticate( params[:session][:password])
      log_in @user
      session[:user_id] = @user.id
       redirect_to   '/linkmen#index'
    else
      @@sign= false
      redirect_to  :action => 'new'
    end
  end
  def destroy
    log_out if logged_in?
    render 'new'
  end
end
