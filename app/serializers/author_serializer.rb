class AuthorSerializer < ActiveModel::Serializer
  attributes :name, :image_url

  has_many :publishes
  has_many :books, through: :publishes
end