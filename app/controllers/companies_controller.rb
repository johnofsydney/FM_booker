class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
  end

  def edit
  end

  def show
  end
end
