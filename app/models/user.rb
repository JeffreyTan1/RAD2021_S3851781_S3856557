class User < ApplicationRecord
 validates :email, presence: true, format: { with: /\A\S+@.+\.\S+\z/, message: "please enter email with format: [string]@[string].[string]"} , uniqueness: true
 validates :password, length: {in: 8..20, wrong_length: "Passwords need to be within 8 and 20 characters"}, confirmation: true

 
    has_one :saved_list
    has_one :bag
    def authenticate(password)
        self.password == password
    end
    
end
