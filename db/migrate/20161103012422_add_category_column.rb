class AddCategoryColumn < ActiveRecord::Migration
  def change
    add_column :memory_cards, :category, :string
  end
end
