class Company < ActiveRecord::Base
  belongs_to :company_rep
  has_many :jobs

    def self.only_approved(companies = Company.all)
      companies.map{|company| Company.where(id: company, approved: true)}.flatten
    end
    
    def self.only_unapproved(companies = Company.all)
      companies.map{|company| Company.where(id: company, approved: false)}.flatten
    end

    def self.ordered_companies
      Company.order "created_at desc"
    end

end
