class CreateUsers < ActiveRecord::Migration[5.0]
  def change
  	drop_table :users
    create_table :users do |t|
      t.text :name
      t.string :email
      t.string :password_digest
      t.integer :role

      t.timestamps
    end
  end
end
