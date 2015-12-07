class Listing
  include Mongoid::Document

  field :name, type: String
  field :email, type: String
  field :photo_url, type: String
  field :cost, type: Integer
  field :description, type: String
end
