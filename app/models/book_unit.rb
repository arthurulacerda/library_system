class BookUnit < ApplicationRecord
  validates :condition, :edition, :year, presence: true

  belongs_to :book
  has_many :rents
end
