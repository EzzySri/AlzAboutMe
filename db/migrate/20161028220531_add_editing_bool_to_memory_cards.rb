class AddEditingBoolToMemoryCards < ActiveRecord::Migration
  def change
    add_column :memory_cards, :editing, :boolean
  end
end
