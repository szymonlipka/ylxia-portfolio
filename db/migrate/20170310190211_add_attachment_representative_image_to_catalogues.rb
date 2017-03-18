class AddAttachmentRepresentativeImageToCatalogues < ActiveRecord::Migration
  def self.up
    change_table :catalogues do |t|
      t.attachment :representative_image
    end
  end

  def self.down
    remove_attachment :catalogues, :representative_image
  end
end
