class ChangeItemsSavedListsToItemsSavedLists < ActiveRecord::Migration[5.1]
  def change
    rename_table :"Items_SavedLists", :"items_saved_lists"
  end
end
