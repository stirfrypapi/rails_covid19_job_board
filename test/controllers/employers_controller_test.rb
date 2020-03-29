require 'test_helper'

class EmployersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employer = employers(:one)
  end

  test "should get index" do
    get employers_url
    assert_response :success
  end

  test "should get new" do
    get new_employer_url
    assert_response :success
  end

  test "should create employer" do
    assert_difference('Employer.count') do
      post employers_url, params: { employer: { account_id: @employer.account_id, address_1: @employer.address_1, address_2: @employer.address_2, city: @employer.city, name: @employer.name, num_covid_cases: @employer.num_covid_cases, state: @employer.state, zipcode: @employer.zipcode } }
    end

    assert_redirected_to employer_url(Employer.last)
  end

  test "should show employer" do
    get employer_url(@employer)
    assert_response :success
  end

  test "should get edit" do
    get edit_employer_url(@employer)
    assert_response :success
  end

  test "should update employer" do
    patch employer_url(@employer), params: { employer: { account_id: @employer.account_id, address_1: @employer.address_1, address_2: @employer.address_2, city: @employer.city, name: @employer.name, num_covid_cases: @employer.num_covid_cases, state: @employer.state, zipcode: @employer.zipcode } }
    assert_redirected_to employer_url(@employer)
  end

  test "should destroy employer" do
    assert_difference('Employer.count', -1) do
      delete employer_url(@employer)
    end

    assert_redirected_to employers_url
  end
end
