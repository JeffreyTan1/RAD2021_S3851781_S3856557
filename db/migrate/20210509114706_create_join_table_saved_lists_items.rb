class CreateJoinTableSavedListsItems < ActiveRecord::Migration[5.1]
  def change
    create_join_table :SavedLists, :Items do |t|
      # t.index [:saved_list_id, :item_id]
      # t.index [:item_id, :saved_list_id]
    end
  end
end
