class AddFirstCheckoutToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_checkout, :boolean
  end
end
