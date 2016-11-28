class CreateShareTables < ActiveRecord::Migration
  def change
    create_table :share_tables do |t|
      t.integer :donator
      t.integer :receiver
      t.integer :group_id
      t.integer :memcard_id

      t.timestamps null: false
    end
  end
end
