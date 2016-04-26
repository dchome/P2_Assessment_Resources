class CreateListsTags < ActiveRecord::Migration
  def change
      create_table :lists_tags do |t|
      t.integer :list_id, null: false
      t.integer :tag_id, null: false

      t.timestamps null: false
    end
  end
end
