require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in admins(:default)
  end

  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "redirected if not logged in" do
    sign_out :user
    get welcome_index_url
    assert_response :redirect
  end
end
