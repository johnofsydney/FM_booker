class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def unallocated
    @jobs = Job.where('technician_id'=>nil)
  end

  def new
    @job = Job.new
  end

  def create
    job = Job.create job_params
    if job.save
      redirect_to job
    else
      redirect_to root_path
      # needs more elegant error trap
    end

  end


  def edit
    @job = Job.find params[:id]
    # @technicians = Technician.all
    # @bookers = Booker.all
  end

  def update
    job = Job.find params[:id]
    # raise
    cloudinary = Cloudinary::Uploader.upload( params[ "job" ][ "photo" ] )
    job.photo = cloudinary["url"]
    job.update job_params
    # Note that photo is NOT being saved along with the other params

    redirect_to job
  end

  def show
    @job = Job.find_by :id => params[:id]
    redirect_to root_path if @job.nil?
  end

  def destroy
    job = Job.find params[:id]
    job.destroy
    redirect_to jobs_path
  end


  private
  def job_params
    params.require(:job).permit(:detail, :summary, :requested_date, :address, :accepted_date, :finished, :booker_id, :technician_id, :date_completed)
  end




end
