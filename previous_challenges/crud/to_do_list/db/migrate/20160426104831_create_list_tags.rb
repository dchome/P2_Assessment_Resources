class CreateListTags < ActiveRecord::Migration
  def change
    create_table :list_tags do |t|
      t.integer :list_id, null: false
      t.integer :tag_id, null: false

      t.timestamps null: false
    end
  end
end
