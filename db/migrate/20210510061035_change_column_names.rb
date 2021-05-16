class ChangeColumnNames < ActiveRecord::Migration[5.1]
  def change
    rename_column :items_saved_lists, :"SavedList_id", :"saved_list_id"
    rename_column :items_saved_lists, :"Item_id", :"item_id"
  end
end
