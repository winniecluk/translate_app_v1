class AddAttachmentCompletedDocumentToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :completed_document
    end
  end

  def self.down
    remove_attachment :projects, :completed_document
  end
end
