class SessionController < ApplicationController
  def new
  end

  def create
    booker = Booker.find_by :email => params[:email]
    if booker.present? && booker.authenticate(params[:password])
      session[:user_id] = booker.id
      redirect_to root_path
    else
      flash[:error] = "Invalid username or password"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
