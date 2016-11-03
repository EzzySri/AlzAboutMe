class ChangeTypeNameMemoryCards < ActiveRecord::Migration
  def change
    remove_column :memory_cards, :type, :string
  	add_column :memory_cards, :question_type, :string
  end
end
