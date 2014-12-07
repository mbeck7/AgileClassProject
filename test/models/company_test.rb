require 'test_helper'

class CompanyTest < ActiveSupport::TestCase

  test "only_approved does not allow companies that are unapproved" do
    company = Company.find(1)
    approved_companies = Company.only_approved
    assert approved_companies.include?(company) && approved_companies.count == 1
  end

  test "only_unapproved does not allow companies that are approved" do
    company = Company.find(1)
    unapproved_companies = Company.only_unapproved
    assert !unapproved_companies.include?(company) && unapproved_companies.count == 4
  end

  test "ordered_companies sorts companies by the most recently created" do
    assert Company.ordered_companies.first.name == "Irish Distillers Limited USA Satellite Office"
    assert Company.ordered_companies.last.name == "AwesomeCo"
  end

end
