class Rating < ApplicationRecord
  validates :user_id, presence: true
end
