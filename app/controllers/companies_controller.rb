class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    ordered_companies = Company.order "created_at desc"
    unapproved_companies = []
    rejected_companies = []
    unapproved_companies << Company.find_by(approved: false)
    rejected_companies << Company.find_by(rejected: true)

    @companies = ordered_companies.flatten - unapproved_companies.flatten - rejected_companies.flatten
    
    searchByCompanyName = Company.search do
      fulltext params[:search]
    end

    searched_companies = searchByCompanyName.results
    
    if(searched_companies)
      @companies = searched_companies.flatten  - unapproved_companies.flatten  - rejected_companies.flatten 
    end
  end

  def show
    @company = Company.find(params[:id])
    respond_with(@company)
  end

  def new
    @company = Company.new
    respond_with(@company)
  end

  def edit
  end

  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: 'Company was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: 'Successfully updated company.' }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_company
      @company = Company.find(params[:id])
    end

    def company_params
      params.require(:company).permit(:name, :address, :state, :city, :zip_code, :company_rep_id, :approved, :rejected)
    end
end
