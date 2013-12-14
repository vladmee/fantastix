class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :group_id
      t.string :group_name
      t.text :description

      t.timestamps
    end
  end
end
