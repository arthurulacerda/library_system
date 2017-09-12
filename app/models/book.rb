class Book < ApplicationRecord
  validates :title, :author, presence: true

  has_many :book_units
end
