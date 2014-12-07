class Company < ActiveRecord::Base
  belongs_to :company_rep
  has_many :jobs

  class << self
  
    def only_approved(companies = Company.all)
      companies.map{|company| Company.where(id: company, approved: true)}.flatten
    end
    
    def only_unapproved(companies = Company.all)
      companies.map{|company| Company.where(id: company, approved: false)}.flatten
    end

    def ordered_companies
      Company.order "created_at desc"
    end

  end
end
