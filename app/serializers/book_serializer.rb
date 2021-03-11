class BookSerializer < ActiveModel::Serializer
  attributes :title, :description, :image_url

  has_many :publishes
  has_many :authors, through: :publishes
end
