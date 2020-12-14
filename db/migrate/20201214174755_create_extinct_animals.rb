class CreateExtinctAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :extinct_animals do |t|
      t.string :kingdom
      t.string :phylum
      t.string :class
      t.string :order
      t.string :suborder
      t.string :family
      t.string :subfamily
      t.string :genus
      t.string :species
      t.string :range
      t.string :extinction_date
      t.string :description

      t.timestamps
    end
  end
end
