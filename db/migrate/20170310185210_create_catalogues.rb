class CreateCatalogues < ActiveRecord::Migration[5.0]
  def change
    create_table :catalogues do |t|
      t.string :name
      t.integer :gallery_id

      t.timestamps
    end
  end
end
