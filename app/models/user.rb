class User < ApplicationRecord
 validates :email, presence: true, format: { with: /\A\S+@.+\.\S+\z/, message: "please enter email with format: [string]@[string].[string]"}
    has_one :saved_list
    has_one :bag
    def authenticate(password)
        self.password.eql? password
    end
end
