require 'test_helper'

class ReportControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get logs" do
    get :logs
    assert_response :success
  end

  test "should get contacts" do
    get :contacts
    assert_response :success
  end

end
