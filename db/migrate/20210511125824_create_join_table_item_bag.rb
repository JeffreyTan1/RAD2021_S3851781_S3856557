class CreateJoinTableItemBag < ActiveRecord::Migration[5.1]
  def change
    create_join_table :items, :bags do |t|
      t.belongs_to :item
      t.belongs_to :bag
    end
  end
end
