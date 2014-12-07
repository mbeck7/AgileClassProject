require 'test_helper'

class JobTest < ActiveSupport::TestCase

  test "only_approved does not allow jobs that are unapproved" do
    job = Job.find(1)
    approved_jobs = Job.only_approved
    assert approved_jobs.include?(job) && approved_jobs.count == 1
  end

  test "only_unapproved does not allow jobs that are approved" do
    job = Job.find(1)
    unapproved_jobs = Job.only_unapproved
    assert !unapproved_jobs.include?(job) && unapproved_jobs.count == 5
  end

  test "ordered_jobs sorts job postings by the most recent posted" do
    assert Job.ordered_jobs.first.title == "Nerf Gun Engineer"
    assert Job.ordered_jobs.last.title == "Elixir Developer"
  end

  test "only_from_approved_companies returns only jobs from approved companies" do
    job = Job.find(1)
    jobs_from_approved_companies = Job.only_from_approved_companies
    assert jobs_from_approved_companies.include?(job) && jobs_from_approved_companies.count == 1
  end

  test "only_if_approved_company_posted returns nil for a posting from an unapproved company" do
    assert_nil Job.only_if_approved_company_posted(Job.find(2))
    assert_nil Job.only_if_approved_company_posted(Job.find(3))
    assert_nil Job.only_if_approved_company_posted(Job.find(4))
    assert_nil Job.only_if_approved_company_posted(Job.find(5))
    assert_nil Job.only_if_approved_company_posted(Job.find(6))
  end

  test "only_if_approved_company_posted returns the posting if it's from an approved company" do
    expect_job = Job.only_if_approved_company_posted(Job.find(1))
    assert expect_job.title == "Elixir Developer"
  end

end
