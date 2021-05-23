class CreateBypassEmailInstances < ActiveRecord::Migration[5.2]
  def change
    create_table :bypass_email_instances do |t|
      t.integer :userId
      t.string :key

      t.timestamps
    end
  end
end
