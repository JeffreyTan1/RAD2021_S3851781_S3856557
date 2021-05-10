require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get searchpage" do
    get search_searchpage_url
    assert_response :success
  end

end
