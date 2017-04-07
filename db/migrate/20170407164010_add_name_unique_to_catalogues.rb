class AddNameUniqueToCatalogues < ActiveRecord::Migration[5.0]
  def change
    add_column :catalogues, :name_unique, :string
  end
end
