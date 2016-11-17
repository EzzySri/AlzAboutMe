class AddFrameworks < ActiveRecord::Migration
  def change
    add_column :users, :framework, :string
  end
end
