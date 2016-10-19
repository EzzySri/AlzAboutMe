class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username 
      t.string :email
      t.string :encrypted_password 
      t.timestamps null: false

      has_secure_password
    end
  end
end
