class Post < ApplicationDocument

  field :title, type: String
  field :content, type: String
  field :excerpt, type: String
  field :slug, type: String

  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :category, class_name: 'Category', foreign_key: 'category_id'

  index({ slug: 1 }, { unique: true })

end
