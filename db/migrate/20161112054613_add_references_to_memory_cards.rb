class AddReferencesToMemoryCards < ActiveRecord::Migration
  def change
    add_reference :memory_cards, :user, index: true, foreign_key: true
  end
end
