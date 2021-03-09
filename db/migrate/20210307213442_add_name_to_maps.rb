class AddNameToMaps < ActiveRecord::Migration[5.2]
  def change
    add_column :maps, :name, :string
  end
end
