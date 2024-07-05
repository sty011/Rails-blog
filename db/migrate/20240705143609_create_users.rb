class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.string :role
      t.boolean :is_active

      t.timestamps
    end
  end
end
