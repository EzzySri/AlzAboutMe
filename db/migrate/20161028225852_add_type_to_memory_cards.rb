class AddTypeToMemoryCards < ActiveRecord::Migration
  def change
    add_column :memory_cards, :type, :string
  end
end
