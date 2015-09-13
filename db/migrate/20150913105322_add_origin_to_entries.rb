class AddOriginToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :origin, :string
  end
end
