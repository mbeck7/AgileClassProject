class Job < ActiveRecord::Base
  belongs_to :company
  
  validates_presence_of :company_id
  validates_presence_of :title
  validates_presence_of :job_type
  validates_presence_of :job_location
  validates_presence_of :job_status
  validates_presence_of :job_description
  validates_presence_of :hours_per_week
  validates_presence_of :pay_min
  validates_presence_of :applicant_experience
  validates_presence_of :how_to_apply

  #Takes in an array of records and returns only those that are approved.
  def self.only_approved(jobs)
    jobs.map{|job| Job.where(id: job, approved: true)}.flatten
  end

  def self.title_search(title, status, location, type)
    title = "%" + title + "%"
    status = "%" + status + "%"
    location = "%" + location + "%"
    type = "%" + type + "%"
    Job.where("title like ? AND job_status like ? AND job_location like ? AND job_type like ?", title, status, location, type)
  end

  
  
end
