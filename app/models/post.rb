class Post
  include Mongoid::Document
  field :name, type: String
  embedded_in :user
end
