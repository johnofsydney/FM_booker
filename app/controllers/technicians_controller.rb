class TechniciansController < ApplicationController
  def index
    @technicians = Technician.all
    if session[:user_type] == "technician"
      flash[:error] = "Step off - you're not allowed to to see thast page."
      redirect_to pages_problem_path
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
      flash[:error] = "Couldn't create the new technician."
      redirect_to pages_problem_path
    end
  end

  def edit
    @technician = Technician.find session[:user_id]
  end

  def update
    technician = Technician.find params[:id]
    technician.update technician_params
    redirect_to technician
  end

  def show
    @technician = Technician.find params[:id]
    if @technician.jobs.count == 0
      flash[:error] = "There are no jobs associated with that user."
      redirect_to pages_problem_path
    end
    # This last bit not yet pushed to HEROKU. Whoops!
    if @technician.id != @current_user.id
      flash[:error] = "Thats not your page."
      redirect_to pages_problem_path
    end
  end

  def delete
  end

  private
  def technician_params
    params.require(:technician).permit(:name, :email, :password, :password_confirmation)
  end

end
