class AddAttachmentPictureToVarients < ActiveRecord::Migration
  def self.up
    change_table :varients do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :varients, :picture
  end
end
