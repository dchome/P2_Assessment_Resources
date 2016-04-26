class DropListTags < ActiveRecord::Migration
  def change
    drop_table :list_tags
  end
end
