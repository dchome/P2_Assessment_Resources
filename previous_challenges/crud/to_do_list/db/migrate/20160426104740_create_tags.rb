class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag_name, limit: 30, null: false

      t.timestamps null: false
    end
  end
end
