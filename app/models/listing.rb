class Listing
  include Mongoid::Document

  field :name, type: String
  field :email, type: String
  field :photo_url, type: String
  field :cost, type: Integer
  field :description, type: String

  validates_presence_of :name, :email, :photo_url, :cost, :description
  validates :photo_url, :uniqueness => true
end
