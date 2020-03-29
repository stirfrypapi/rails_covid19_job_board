require "application_system_test_case"

class EmployersTest < ApplicationSystemTestCase
  setup do
    @employer = employers(:one)
  end

  test "visiting the index" do
    visit employers_url
    assert_selector "h1", text: "Employers"
  end

  test "creating a Employer" do
    visit employers_url
    click_on "New Employer"

    fill_in "Account", with: @employer.account_id
    fill_in "Address 1", with: @employer.address_1
    fill_in "Address 2", with: @employer.address_2
    fill_in "City", with: @employer.city
    fill_in "Name", with: @employer.name
    fill_in "Num covid cases", with: @employer.num_covid_cases
    fill_in "State", with: @employer.state
    fill_in "Zipcode", with: @employer.zipcode
    click_on "Create Employer"

    assert_text "Employer was successfully created"
    click_on "Back"
  end

  test "updating a Employer" do
    visit employers_url
    click_on "Edit", match: :first

    fill_in "Account", with: @employer.account_id
    fill_in "Address 1", with: @employer.address_1
    fill_in "Address 2", with: @employer.address_2
    fill_in "City", with: @employer.city
    fill_in "Name", with: @employer.name
    fill_in "Num covid cases", with: @employer.num_covid_cases
    fill_in "State", with: @employer.state
    fill_in "Zipcode", with: @employer.zipcode
    click_on "Update Employer"

    assert_text "Employer was successfully updated"
    click_on "Back"
  end

  test "destroying a Employer" do
    visit employers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employer was successfully destroyed"
  end
end
