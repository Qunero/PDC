require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get Home" do
    get :Home
    assert_response :success
  end

  test "should get Projects" do
    get :Projects
    assert_response :success
  end

  test "should get Search" do
    get :Search
    assert_response :success
  end

  test "should get User" do
    get :User
    assert_response :success
  end

  test "should get Contact" do
    get :Contact
    assert_response :success
  end

end
