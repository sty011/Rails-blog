class User < ApplicationDocument

  field :username, type: String
  field :password, type: String
  field :email, type: String
  field :first_name, type: String
  field :last_name, type: String
  field :bio, type: String
  field :role, type: String
  field :is_active, type: Boolean

  index({ username: 1 }, { unique: true })
  index({ email: 1 }, { unique: true })
end
