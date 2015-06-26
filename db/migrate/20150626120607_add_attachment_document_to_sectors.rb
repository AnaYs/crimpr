class AddAttachmentDocumentToSectors < ActiveRecord::Migration
  def self.up
    change_table :sectors do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :sectors, :document
  end
end
