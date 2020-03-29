require 'test_helper'

class ApplicantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applicant = applicants(:one)
  end

  test "should get index" do
    get applicants_url
    assert_response :success
  end

  test "should get new" do
    get new_applicant_url
    assert_response :success
  end

  test "should create applicant" do
    assert_difference('Applicant.count') do
      post applicants_url, params: { applicant: { account_id: @applicant.account_id, degree: @applicant.degree, exp_description: @applicant.exp_description, exp_from: @applicant.exp_from, exp_position: @applicant.exp_position, exp_to: @applicant.exp_to, first_name: @applicant.first_name, grad_date: @applicant.grad_date, last_name: @applicant.last_name, profession: @applicant.profession, school: @applicant.school, zipcode: @applicant.zipcode } }
    end

    assert_redirected_to applicant_url(Applicant.last)
  end

  test "should show applicant" do
    get applicant_url(@applicant)
    assert_response :success
  end

  test "should get edit" do
    get edit_applicant_url(@applicant)
    assert_response :success
  end

  test "should update applicant" do
    patch applicant_url(@applicant), params: { applicant: { account_id: @applicant.account_id, degree: @applicant.degree, exp_description: @applicant.exp_description, exp_from: @applicant.exp_from, exp_position: @applicant.exp_position, exp_to: @applicant.exp_to, first_name: @applicant.first_name, grad_date: @applicant.grad_date, last_name: @applicant.last_name, profession: @applicant.profession, school: @applicant.school, zipcode: @applicant.zipcode } }
    assert_redirected_to applicant_url(@applicant)
  end

  test "should destroy applicant" do
    assert_difference('Applicant.count', -1) do
      delete applicant_url(@applicant)
    end

    assert_redirected_to applicants_url
  end
end
