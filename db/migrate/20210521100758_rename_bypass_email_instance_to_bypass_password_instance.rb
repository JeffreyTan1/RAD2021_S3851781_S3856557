class RenameBypassEmailInstanceToBypassPasswordInstance < ActiveRecord::Migration[5.2]
  def change
    rename_table :bypass_email_instances, :bypass_password_instances
  end
end
