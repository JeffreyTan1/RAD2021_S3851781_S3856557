class CreateBagItems < ActiveRecord::Migration[5.1]
  def change
    create_table :bag_items do |t|
      t.string :color
      t.string :size
      t.integer :quantity
      t.references :bag
      t.references :item
      t.timestamps
    end
    
    drop_table :bags_items
    
    
  end
end
