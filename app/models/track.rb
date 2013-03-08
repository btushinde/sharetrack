class Track
  include Mongoid::Document
  field :url, type: String
  field :title, type: String
  field :rank, type: Integer
end
