class AddTopWorkToWorks < ActiveRecord::Migration[5.0]
  def change
    add_column :works, :top_work, :boolean
  end
end
