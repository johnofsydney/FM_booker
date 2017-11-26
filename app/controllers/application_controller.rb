class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception



  before_action :fetch_user

  private
  def fetch_user
    if session[:user_type] == "booker"
      @current_user = Booker.find_by :id => session[:user_id] if session[:user_id].present?
      session[:user_id] = nil unless @current_user.present?
    elsif session[:user_type] == "technician"
      @current_user = Technician.find_by :id => session[:user_id] if session[:user_id].present?
      session[:user_id] = nil unless @current_user.present?
    else
    end

  end

  def check_if_logged_in
    redirect_to login_path unless @current_user.present?
  end

  def check_if_admin
    redirect_to root_path unless (@current_user.present? && @current_user.admin?)
  end






end
