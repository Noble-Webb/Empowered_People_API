class AddCOMMONNAMETOEXTINCTANIMALS < ActiveRecord::Migration[5.2]
  def change
    add_column :extinct_animals, :common_name, :string
  end
end
