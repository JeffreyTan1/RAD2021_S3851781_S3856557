require 'test_helper'

class ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get profilepage" do
    get profile_profilepage_url
    assert_response :success
  end

end
