require 'test_helper'

class BundleControllerTest < ActionController::TestCase
  test "should get exec" do
    get :exec
    assert_response :success
  end

  test "should get rake" do
    get :rake
    assert_response :success
  end

  test "should get assets:precompile" do
    get :assets:precompile
    assert_response :success
  end

end
