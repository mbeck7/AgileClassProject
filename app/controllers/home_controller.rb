class HomeController < ApplicationController

  def index
    @jobs = Job.only_approved(Job.ordered_jobs)
	
  end

    def show
    @job = Job.find(params[:id])
    @company = Company.find(@job.company_id)
  end

  def search #Displays the search bar at home#index
  end
 
  def search_results #Displays search results
    title = params[:search_title]
    status = params[:job_status]
    location = params[:job_location]
    type = params[:job_type]
    @found_jobs = Job.title_search(title, status, location, type)
  end
end
