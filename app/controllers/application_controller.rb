class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authorize

  private
  def authorize
    unless session[:user_session]
      flash[:notice] = t('login.message')
      redirect_to(:controller => "users", :action => "login_show")
    end
  end
end
