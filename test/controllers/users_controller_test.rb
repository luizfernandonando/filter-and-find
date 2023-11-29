require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get skills" do
    get users_skills_url
    assert_response :success
  end

  test "should get favorite_jobs" do
    get users_favorite_jobs_url
    assert_response :success
  end
end
