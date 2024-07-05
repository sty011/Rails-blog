class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.text :excerpt
      t.string :slug
      t.string :user_id
      t.string :category_id

      t.timestamps
    end
  end
end
