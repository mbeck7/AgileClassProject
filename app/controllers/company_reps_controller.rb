class CompanyRepsController < ApplicationController
  before_action :authenticate_company_rep!
  def index
    companies = current_company_rep.companies
    @approved_companies = Company.only_approved(companies)
    @unapproved_companies = Company.only_unapproved(companies)

    @unfilled_posts = []
    @approved_companies.each do |company|
      @unfilled_posts << Job.find_by(company_id:company.id, filled:false, approved:true) if company
    end

    @unfilled_posts.flatten
  end
end
