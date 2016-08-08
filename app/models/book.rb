class Book < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :recommendations

  mount_uploader :book_image, BookImageUploader
end
