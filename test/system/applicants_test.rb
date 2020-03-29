require "application_system_test_case"

class ApplicantsTest < ApplicationSystemTestCase
  setup do
    @applicant = applicants(:one)
  end

  test "visiting the index" do
    visit applicants_url
    assert_selector "h1", text: "Applicants"
  end

  test "creating a Applicant" do
    visit applicants_url
    click_on "New Applicant"

    fill_in "Account", with: @applicant.account_id
    fill_in "Degree", with: @applicant.degree
    fill_in "Exp description", with: @applicant.exp_description
    fill_in "Exp from", with: @applicant.exp_from
    fill_in "Exp position", with: @applicant.exp_position
    fill_in "Exp to", with: @applicant.exp_to
    fill_in "First name", with: @applicant.first_name
    fill_in "Grad date", with: @applicant.grad_date
    fill_in "Last name", with: @applicant.last_name
    fill_in "Profession", with: @applicant.profession
    fill_in "School", with: @applicant.school
    fill_in "Zipcode", with: @applicant.zipcode
    click_on "Create Applicant"

    assert_text "Applicant was successfully created"
    click_on "Back"
  end

  test "updating a Applicant" do
    visit applicants_url
    click_on "Edit", match: :first

    fill_in "Account", with: @applicant.account_id
    fill_in "Degree", with: @applicant.degree
    fill_in "Exp description", with: @applicant.exp_description
    fill_in "Exp from", with: @applicant.exp_from
    fill_in "Exp position", with: @applicant.exp_position
    fill_in "Exp to", with: @applicant.exp_to
    fill_in "First name", with: @applicant.first_name
    fill_in "Grad date", with: @applicant.grad_date
    fill_in "Last name", with: @applicant.last_name
    fill_in "Profession", with: @applicant.profession
    fill_in "School", with: @applicant.school
    fill_in "Zipcode", with: @applicant.zipcode
    click_on "Update Applicant"

    assert_text "Applicant was successfully updated"
    click_on "Back"
  end

  test "destroying a Applicant" do
    visit applicants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Applicant was successfully destroyed"
  end
end
