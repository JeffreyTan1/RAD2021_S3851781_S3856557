require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
    
  
  def test_should_login
     user = User.create(name: "John", email: "john@example.com", password: "01234567890",first_checkout: 1, is_admin: 0)
    post '/session/new', params: {email: user.email, password: user.password}
    assert_redirected_to 'http://www.example.com/'
  end

end
