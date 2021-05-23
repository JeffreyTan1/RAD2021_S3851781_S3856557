class ChangePopularityToInt < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :popularity, :integer
  end
end
