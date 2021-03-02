class CompaniesController < ApplicationController
  before_action :authenticate_company!

  def show
    @companies = Company.all
    @company = Company.new
  end
end
