class Bag < ApplicationRecord
  validates :user_id, presence: true
  belongs_to :user
  has_many :bag_items
  has_many :items, through: :bag_items
end
