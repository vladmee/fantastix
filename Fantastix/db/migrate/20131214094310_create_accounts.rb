class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :account_type
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :avatar

      t.timestamps
    end
  end
end
