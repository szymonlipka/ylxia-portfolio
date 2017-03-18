class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.string :name
      t.integer :catalogue_id

      t.timestamps
    end
  end
end
