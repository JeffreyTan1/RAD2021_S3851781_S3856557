class Item < ApplicationRecord
  has_and_belongs_to_many :bag
  has_and_belongs_to_many :saved_list

    def display
        self.image
    end

end
