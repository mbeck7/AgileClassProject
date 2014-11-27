class Company < ActiveRecord::Base
  belongs_to :company_rep
  has_many :jobs
end
