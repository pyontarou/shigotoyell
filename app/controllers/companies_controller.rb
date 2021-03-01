class CompaniesController < ApplicationController
  def show
    @companies = Company.all
    @company = Company.new
  end
end
