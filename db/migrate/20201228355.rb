class MapSuggestion < ActiveRecord::Migration[5.2]
    def change
      rename_column :users, :map_suggestion, :text, array:true, default: []
    end
  end