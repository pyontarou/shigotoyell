class JobsController < ApplicationController
  before_action :authenticate_company!, except: [:show, :index]

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
    @company = current_company
    @companies = Company.all
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to company_path(@current_company)
    else
     render :new
    end
  end

  private
  def job_params
    params.require(:job).permit(:recruitment_type_id, :job_description, :qualification, :workplace, :salary, :bonus, :employment_status_id, :working_hours, :holiday_id, :experience＿id, :educational_background_id, :age_requirements_id).merge(company_id: current_company.id)
    
  end
end
