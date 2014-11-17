class JobsController < ApplicationController
  before_action :set_job, only: [:show]

  def index
    @jobs = Job.first(20)
  end

  def show
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:company_name, :title, :job_type, :job_description, :hours_per_week, :pay_min, :pay_max, :pay_comment, :applicant_experience, :how_to_apply)
    end
end
