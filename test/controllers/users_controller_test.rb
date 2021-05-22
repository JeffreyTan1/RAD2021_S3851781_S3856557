require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def test_create

    post '/user/new', params: {email: user.email, password: user.password}
    assert_redirected_to 'http://www.example.com/'
  end
end
