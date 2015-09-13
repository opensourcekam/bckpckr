class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.date :date
      t.float :budget
      t.string :destination

      t.timestamps
    end
  end
end
