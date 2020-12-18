class ScientificClass < ActiveRecord::Migration[5.2]
  def change
    rename_column :mammals, :class, :scientific_class
  end
end
