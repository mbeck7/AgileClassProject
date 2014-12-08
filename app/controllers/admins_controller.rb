class AdminsController < ApplicationController
   before_action :authenticate_admin!

  def index
    @unapproved_companies = Company.only_unapproved(Company.ordered_companies)
    @unapproved_jobs = Job.only_unapproved(Job.ordered_jobs)
  end

end
