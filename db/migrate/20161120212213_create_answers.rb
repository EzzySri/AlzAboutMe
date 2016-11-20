class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :user
      t.references :memory_card
      t.string :answer
      t.timestamps null: false
    end
  end
end
