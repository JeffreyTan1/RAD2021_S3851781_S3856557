class AddFilterParamsToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :color1, :string
    add_column :items, :color2, :string
    add_column :items, :color3, :string
    add_column :items, :small, :boolean
    add_column :items, :medium, :boolean
    add_column :items, :large, :boolean
  end
end
