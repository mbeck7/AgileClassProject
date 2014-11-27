class AdminsController < ApplicationController
   before_action :authenticate_admin!

  def index
    @unapproved_companies = []
    @unapproved_jobs = []
    @unapproved_companies << Company.find_by(approved: false)
    @unapproved_jobs << Job.find_by(approved: false)
  end

end
