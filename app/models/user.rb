class User < ApplicationRecord
    has_one :saved_list
    def authenticate(password)
        self.password == password
    end
end
