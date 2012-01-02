class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :encrypted_password
      t.string :salt
      t.string :location

      t.timestamps
    end
  end
end
