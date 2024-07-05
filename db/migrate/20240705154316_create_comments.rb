class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :user_id
      t.string :post_id
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
