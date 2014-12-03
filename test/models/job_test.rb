require 'test_helper'

class JobTest < ActiveSupport::TestCase

  test "The only_approved method does not allow jobs that are unapproved" do
    approved_jobs = Job.only_approved(Job.all)
    assert approved_jobs.first.title == "Action Hero Sidekick" && approved_jobs.count == 1
  end

end
