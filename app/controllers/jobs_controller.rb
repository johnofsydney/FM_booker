class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def unallocated
    @jobs = Job.where('accepted_date'=>nil)
  end

  def new
    @job = Job.new
  end

  def create
    job = Job.create job_params
    redirect_to job
  end


  def edit
    @job = Job.find params[:id]
  end

  def update
    job = Job.find params[:id]
    job.update job_params
    redirect_to job
  end

  def show
    @job = Job.find params[:id]
  end

  def destroy
    job = Job.find params[:id]
    job.destroy
    redirect_to jobs_path
  end


  private
  def job_params
    params.require(:job).permit(:summary, :detail, :address, :requested_date, :accepted_date, :finished, :booker_id, :technician_id)
  end



end
