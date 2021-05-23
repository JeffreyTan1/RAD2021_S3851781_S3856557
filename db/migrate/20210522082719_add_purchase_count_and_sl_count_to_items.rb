class AddPurchaseCountAndSlCountToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :purchase_count, :integer
    add_column :items, :sl_count, :integer
  end
end
