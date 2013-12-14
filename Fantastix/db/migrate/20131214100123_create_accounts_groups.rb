class CreateAccountsGroups < ActiveRecord::Migration
  def change
    create_table :accounts_groups do |t|
      t.integer :account_id
      t.integer :group_id

      t.timestamps
    end
  end
end
