class Job < ActiveRecord::Base
  validates_presence_of :company_name
  validates_presence_of :title
  validates_presence_of :job_type
  validates_presence_of :job_location
  validates_presence_of :job_description
  validates_presence_of :hours_per_week
  validates_presence_of :pay_min
  validates_presence_of :applicant_experience
  validates_presence_of :how_to_apply

  has_many :job_keywords
end
