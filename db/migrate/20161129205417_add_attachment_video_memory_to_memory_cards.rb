class AddAttachmentVideoMemoryToMemoryCards < ActiveRecord::Migration
  def self.up
    change_table :memory_cards do |t|
      t.attachment :video_memory
    end
  end

  def self.down
    remove_attachment :memory_cards, :video_memory
  end
end
