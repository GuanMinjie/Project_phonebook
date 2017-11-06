class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_filter :authenticate
  def authenticate
    unless  sign_in?
      redirect_to  sign_in_path
    end
  end
end
