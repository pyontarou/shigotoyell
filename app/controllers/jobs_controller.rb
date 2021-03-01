class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
    @company = current_company
    @companies = Company.all
  end

  def create
    
  end
end
