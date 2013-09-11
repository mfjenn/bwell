require 'test_helper'

class InquiriesControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get thank_you" do
    get :thank_you
    assert_response :success
  end

end
