require 'test_helper'

class DataControllerTest < ActionController::TestCase
  test "should get apiThings" do
    get :apiThings
    assert_response :success
  end

end
