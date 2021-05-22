class BagItem < ApplicationRecord
  validates :bag_id, presence: true
  validates :item_id, presence: true
  validates :color, presence: true
  validates :size, presence: true
  validates :quantity, presence: true
  belongs_to :bag
  belongs_to :item
end
