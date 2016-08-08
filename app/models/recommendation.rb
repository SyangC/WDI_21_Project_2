class Recommendation < ApplicationRecord
  belongs_to :book
  has_many :types
end
