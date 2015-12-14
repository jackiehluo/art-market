class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  field :name, type: String
  field :email, type: String
  field :password_digest, type: String
  field :photo_url, type: String

  has_secure_password
  validates_presence_of :name, :email, :password
  validates :email, :uniqueness => true
  validates :password, :length => {
    :minimum => 6,
    :maximum => 20,
    :too_short => "Passwords must be at least %{count} characters.",
    :too_long => "Passwords must be at most %{count} characters."
  }
end
