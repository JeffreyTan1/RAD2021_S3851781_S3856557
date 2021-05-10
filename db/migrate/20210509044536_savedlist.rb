class Savedlist < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.belongs_to :saved_list
      t.float :price
      t.string :name
      t.string :description
      t.string :image
      t.float :popularity
      t.string :collection
      t.timestamps
    end
    
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.timestamps
    end
    
    create_table :saved_lists do |t|
      t.belongs_to :user
      t.timestamps
    end
    
  end
end
