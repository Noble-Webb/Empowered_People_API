class ExtinctAnimalSerializer < ActiveModel::Serializer
  attributes :id, :kingdom, :phylum, :class, :order, :suborder, :family, :subfamily, :genus, :species, :range, :extinction_date, :description
end
