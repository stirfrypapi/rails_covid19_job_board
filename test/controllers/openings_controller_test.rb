require 'test_helper'

class OpeningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opening = openings(:one)
  end

  test "should get index" do
    get openings_url
    assert_response :success
  end

  test "should get new" do
    get new_opening_url
    assert_response :success
  end

  test "should create opening" do
    assert_difference('Opening.count') do
      post openings_url, params: { opening: { date_posted: @opening.date_posted, deadline: @opening.deadline, description: @opening.description, employer_id: @opening.employer_id, title: @opening.title, urgency: @opening.urgency } }
    end

    assert_redirected_to opening_url(Opening.last)
  end

  test "should show opening" do
    get opening_url(@opening)
    assert_response :success
  end

  test "should get edit" do
    get edit_opening_url(@opening)
    assert_response :success
  end

  test "should update opening" do
    patch opening_url(@opening), params: { opening: { date_posted: @opening.date_posted, deadline: @opening.deadline, description: @opening.description, employer_id: @opening.employer_id, title: @opening.title, urgency: @opening.urgency } }
    assert_redirected_to opening_url(@opening)
  end

  test "should destroy opening" do
    assert_difference('Opening.count', -1) do
      delete opening_url(@opening)
    end

    assert_redirected_to openings_url
  end
end
