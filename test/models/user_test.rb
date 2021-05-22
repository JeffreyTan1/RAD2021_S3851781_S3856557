require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def test_validity
    newUser = User.create(name: "John", email: "john@example.com", password: "01234567890",first_checkout: 1, is_admin: 0)
    assert newUser.valid?, "Valid user"
    
     newUser2 = User.create(name: "John", password: "01234567890", first_checkout: 1, is_admin: 0)
     assert !newUser2.valid? ,"No email field"
     
     newUser3 = User.create(name: "John", email: "john@example.com", password: "012", first_checkout: 1, is_admin: 0)
     assert !newUser3.valid?, "Password not 8..20"
     
     newUser4 = User.create(name: "John", email: "john@example.com", password: "01234567890", first_checkout: 1, is_admin: 0)
     assert !newUser4.valid?, "Email not formatted correctly"
  end
  
 
end
