class HomeController < ApplicationController

  def index
    @jobs = Job.order "created_at desc"
	
  end

    def show
    @job = Job.find(params[:id])
    @company = Company.find(@job.company_id)
  end

  def search #Displays the search bar at home#index
  end
 
  def search_results #Displays search results
    title = params[:search_title]
    local_remote = params[:job_local_remote]
    status = params[:job_status]
    type = params[:job_type]
    @found_jobs = Job.title_search(title, local_remote, status, type)
  end
end
