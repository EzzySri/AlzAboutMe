class AddQuestionChoicesColumnToMemoryCard < ActiveRecord::Migration
  def change
  	add_column :memory_cards, :question_choices, :string
  end
end
