require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get reports" do
    get :reports
    assert_response :success
  end

  test "should get print" do
    get :print
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

end
