require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get activate" do
    get users_activate_url
    assert_response :success
  end

end
