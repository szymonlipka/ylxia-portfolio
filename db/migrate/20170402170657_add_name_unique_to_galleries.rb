class AddNameUniqueToGalleries < ActiveRecord::Migration[5.0]
  def change
    add_column :galleries, :name_unique, :string
  end
end
