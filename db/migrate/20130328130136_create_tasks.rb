class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :list_id
      t.boolean :finished

      t.timestamps
    end

    add_index :tasks, :list_id
    add_index :tasks, :finished
  end
end
