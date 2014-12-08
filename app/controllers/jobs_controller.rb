class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update]
  respond_to :html, :json

  def index
     if(params[:search_title] == "true")
      @jobs = Job.order('title ASC')
    else
      @jobs= Job.order "created_at ASC"
    end

    unapproved_jobs = []
    rejected_jobs = []
    unapproved_jobs << Job.find_by(approved: false) if Job.find_by(approved: false) 
    rejected_jobs << Job.find_by(rejected: true) if Job.find_by(rejected: false)
    @jobs = @jobs - unapproved_jobs - rejected_jobs

  end

  def show
    @job = Job.find(params[:id])
    @company = Company.find(@job.company_id)
  end

  def new
    @dropdown_fields = []
      current_company_rep.companies.each do |company|
        @dropdown_fields << [company.name, company.id]
      end

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

  def edit
    if company_rep_signed_in?
      @dropdown_fields = []
      current_company_rep.companies.each do |company|
        @dropdown_fields << [company.name, company.id]
      end

    else
      job = Job.find(params[:id])
      @dropdown_fields = [ [job.company.name, job.company.id] ]
    end
  end

  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Successfully updated job.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:company_id, :title, :job_type, :job_location, :job_status, :job_description, :hours_per_week,
                                                   :pay_min, :pay_max, :pay_comment, :applicant_experience, :how_to_apply,
                                                   :approved, :rejected, :filled)
    end
end
