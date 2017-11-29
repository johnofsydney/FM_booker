class TechniciansController < ApplicationController
  def index
    @technicians = Technician.all
    if session[:user_type] == "technician"
      @message = "Not permitted to see this page."
      redirect_to root_path
    end
  end

  def new
    @technician = Technician.new
  end

  def create
    technician = Technician.create technician_params
    if technician.save
      redirect_to technician
    else
      redirect_to root_path
      # needs more elegant error trap
    end
  end

  def edit
    @technician = Technician.find session[:user_id]
  end

  def update
    # user = @current_user # User.find params[:id]
    # user.update user_params
    # redirect_to root_path
    technician = Technician.find params[:id]
    technician.update technician_params
    redirect_to technician
  end

  def show
    @technician = Technician.find params[:id]
    if @technician.jobs.count == 0
      @message = "There are no jobs associated with this user."
      redirect_to root_path
    end
  end

  def delete
  end

  private
  def technician_params
    params.require(:technician).permit(:name, :email, :password, :password_confirmation)
  end

end
