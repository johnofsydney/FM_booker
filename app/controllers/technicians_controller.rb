class TechniciansController < ApplicationController
  def index
    @technicians = Technician.all
  end

  def new

  end

  def create
  end

  def edit
  end

  def update
  end

  def show
    @technician = Technician.find params[:id]
  end

  def delete
  end
end
