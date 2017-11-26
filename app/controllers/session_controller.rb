class SessionController < ApplicationController
  def new
  end

  def create
    user_type = params[:type]
    if user_type == "booker"
      booker = Booker.find_by :email => params[:email]
      if booker.present? && booker.authenticate(params[:password])
        session[:user_id] = booker.id
        session[:user_type] = "booker"
        redirect_to root_path
      else
        flash[:error] = "Invalid username or password"
        redirect_to login_path
      end
    elsif user_type == "technician"
      technician = Technician.find_by :email => params[:email]
      if technician.present? && technician.authenticate(params[:password])
        session[:user_id] = technician.id
        session[:user_type] = "technician"
        redirect_to root_path
      else
        flash[:error] = "Invalid username or password"
        redirect_to login_path
      end
    end

  end # end of def create


  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
