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

  searchable do
  		text :title, :job_type, :job_location, :job_status, :job_description, :applicant_experience 
  end

end
