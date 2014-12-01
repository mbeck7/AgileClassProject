class CompanyRepsController < ApplicationController
  before_action :authenticate_company_rep!
  def index
    @approved_companies = []
    @unapproved_companies = []
    @approved_companies << Company.find_by(company_rep_id: current_company_rep, approved: true)
    @unapproved_companies << Company.find_by(company_rep_id: current_company_rep, approved: false)
    
    @approved_companies.flatten
    @unapproved_companies.flatten

    @unfilled_posts = []
    @approved_companies.each do |company|
      @unfilled_posts << Job.find_by(company_id:company.id, filled:false)
    end

    @unfilled_posts.flatten
  end
end
