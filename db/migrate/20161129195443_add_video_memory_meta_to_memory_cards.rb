class AddVideoMemoryMetaToMemoryCards < ActiveRecord::Migration
  def self.up
    add_column :memory_cards, :video_memory_meta, :string
  end

  def self.down
    remove_column :memory_cards, :video_memory_meta, :string
  end
end

