class SessionsController < ApplicationController
 skip_before_action :authenticate,only: [:new,:create]
 @@sign = 0
  def new
    @sign_in = @@sign
  end
  
  def create
     @user = User.where(:name=>params[:session][:name]).first
      # puts params[:session][:name]
      # puts @user
       #puts @user.name
    if @user && @user.authenticate( params[:session][:password])
      log_in @user
      puts @user.password
       redirect_to   '/linkmen#index'
    else
      #puts @user.password
      #puts params[:session][:password]
      @@sign= false
     # puts @error

      redirect_to  :action => 'new'
    end
  end
  def destroy
    log_out if logged_in?
    render 'new'
  end
end
