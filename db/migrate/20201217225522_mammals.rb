class Mammals < ActiveRecord::Migration[5.2]
  def change
    create_table :mammals do |t|
      t.string :common_name
      t.string :url
      t.string :kingdom
      t.string :phylum 
      t.string :class 
      t.string :order 
      t.string :family
      t.string :genus 
      t.string :species
      t.string :description 
      t.string :extinction_date_BCE
      t.string :range 
    end
  end
end
