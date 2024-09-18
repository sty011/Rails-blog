class ApplicationDocument
  include Mongoid::Document
  include Mongoid::Timestamps

  # A scope that retrieve a collection of users
  # ordered by the created_at timestamp in descending order
  scope :recent, -> { order_by(created_at: :desc) }

end
