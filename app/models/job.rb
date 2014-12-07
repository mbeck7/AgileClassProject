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

  class << self
    
    def only_approved(jobs = Job.all)
      approved_jobs = jobs.map{|job| Job.where(id: job.id, approved: true, rejected: false)}.flatten
      only_from_approved_companies(approved_jobs)
    end
    
    def only_unapproved(jobs = Job.all)
      jobs.map{|job| Job.where(id: job.id, approved: false, rejected: false)}.flatten
    end

    def only_from_approved_companies(jobs = Job.all)
      jobs.map{|job| self.only_if_approved_company_posted(job)}.flatten - [nil]
    end

    def ordered_jobs()
      Job.all.order "created_at desc"
    end

    def only_if_approved_company_posted(job)
      job = job && Company.find(job.company_id).approved == true ? job : nil
    end

  end
end
