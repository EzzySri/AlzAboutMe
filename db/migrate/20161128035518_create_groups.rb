class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :creator
      t.string :group_name
      t.string :people

      t.timestamps null: false
    end
  end
end
