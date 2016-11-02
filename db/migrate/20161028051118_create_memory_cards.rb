class CreateMemoryCards < ActiveRecord::Migration
  def change
    create_table :memory_cards do |t|
      t.string :question
      t.string :answer
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
