class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.datetime :date
      t.integer :likes

      t.timestamps
    end
  end
end
