class AddAttachmentImageToFaces < ActiveRecord::Migration[5.0]
  def self.up
    change_table :faces do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :faces, :image
  end
end
