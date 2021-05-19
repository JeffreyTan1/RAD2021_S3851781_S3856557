class AddKeywordToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :keyword, :string
  end
end
