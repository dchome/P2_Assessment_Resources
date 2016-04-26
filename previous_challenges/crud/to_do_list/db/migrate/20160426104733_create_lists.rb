class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title, limit: 75, null: false
      t.integer :author_id

      t.timestamps null: false
    end
  end
end
