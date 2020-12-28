class AddMapSuggestionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :map_suggestion, :string
    rename_column :users, :kingdom, :family 
  end
end
