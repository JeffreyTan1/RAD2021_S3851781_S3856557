class Item < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  
  has_and_belongs_to_many :saved_list
  has_many :bag_items
  has_many :bags, through: :bags_items
    def display
        self.image
    end

end
