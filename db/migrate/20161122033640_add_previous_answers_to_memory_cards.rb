class AddPreviousAnswersToMemoryCards < ActiveRecord::Migration
  def change
    add_column :memory_cards, :previous_answers, :string
  end
end
