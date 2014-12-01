class Company < ActiveRecord::Base
  belongs_to :company_rep
  has_many :jobs

  class << self
  
    def approved_job_postings
      Self.find_by(approved: true, rejected: false)
      Self.order "created_at desc"
    end

    searchable do
    	text :name
    end

  end
end
