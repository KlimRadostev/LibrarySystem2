class Author < ApplicationRecord
    has_many :publishes
    has_many :books, through: :publishes

    before_create :slugify

    def slugify
        self.slug = name.parameterize
    end
end
