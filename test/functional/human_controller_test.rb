require 'test_helper'

class HumanControllerTest < ActionController::TestCase
  test "should get show_by_chr" do
    get :show_by_chr
    assert_response :success
  end

end
