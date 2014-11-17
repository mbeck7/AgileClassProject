require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { company_name: @job.company_name, description: @job.description, experience: @job.experience, full_time: @job.full_time, hours_per_week: @job.hours_per_week, how_to_apply: @job.how_to_apply, is_entry_level: @job.is_entry_level, is_internship: @job.is_internship, part_time: @job.part_time, pay_comment: @job.pay_comment, pay_exact: @job.pay_exact, pay_max: @job.pay_max, pay_min: @job.pay_min, title: @job.title }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    patch :update, id: @job, job: { company_name: @job.company_name, description: @job.description, experience: @job.experience, full_time: @job.full_time, hours_per_week: @job.hours_per_week, how_to_apply: @job.how_to_apply, is_entry_level: @job.is_entry_level, is_internship: @job.is_internship, part_time: @job.part_time, pay_comment: @job.pay_comment, pay_exact: @job.pay_exact, pay_max: @job.pay_max, pay_min: @job.pay_min, title: @job.title }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
