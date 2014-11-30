class HomeController < ApplicationController

  def index
    @jobs = Job.order "created_at desc"
    @jobs = Job.all
    search = Job.search do
      fulltext params[:search]
    end
	
  end

    def show
    @job = Job.find(params[:id])
    @company = Company.find(@job.company_id)
  end
end
