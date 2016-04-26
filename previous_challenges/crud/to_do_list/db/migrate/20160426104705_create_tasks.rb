class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :thing_to_do, limit: 140, null: false
      t.integer :list_id
      t.integer :creator_id, null: false

      t.timestamps null: false
    end
  end
end
