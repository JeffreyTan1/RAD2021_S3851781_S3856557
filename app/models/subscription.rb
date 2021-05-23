class Subscription < ApplicationRecord
  validates :email, presence: true, format: { with: /\A\S+@.+\.\S+\z/, message: "please enter email with format: [string]@[string].[string]"} , uniqueness: true
end
