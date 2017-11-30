class JobsController < ApplicationController
  def index
    # if params[:term].length != 0
    if params[:term]
      if params[:term].length != 0
        @jobs = Job.search_full_text(params[:term])
      else
        @jobs = Job.all
      end
    else
      @jobs = Job.all
    end

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
      redirect_to pages_problem_path
    end
  end


  def edit
    @job = Job.find params[:id]
  end

  def update
    job = Job.find params[:id]
    # raise
    if params["job"]["photo"].nil?
    else
      cloudinary = Cloudinary::Uploader.upload( params[ "job" ][ "photo" ] )
      job.photo = cloudinary["url"]
    end
    job.update job_params
    redirect_to job
  end

  def show
    @job = Job.find_by :id => params[:id]
    if @job.nil?
      flash[:error] = "Please don't enter job number in the URL. That's naughty."
      redirect_to pages_problem_path
    end

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
