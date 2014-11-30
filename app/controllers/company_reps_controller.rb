class CompanyRepsController < ApplicationController
  before_action :authenticate_company_rep!
  def index
    @approved_companies = []
    @unapproved_companies = []
    @approved_companies << Company.find_by(company_rep_id: current_company_rep, approved: true)
    @unapproved_companies << Company.find_by(company_rep_id: current_company_rep, approved: false)
    @approved_companies.flatten
    @unapproved_companies.flatten
  end
end
