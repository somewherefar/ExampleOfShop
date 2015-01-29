require 'test_helper'

class CheckoutControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get registration" do
    get :registration
    assert_response :success
  end

end
