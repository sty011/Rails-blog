class Category < ApplicationDocument

  field :name, type: String
  field :description, type: String

  index({ name: 1 }, { unique: true })

end
