class DropAccountsGroupsTable < ActiveRecord::Migration
  def up
  	drop_table :accounts_groups
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
