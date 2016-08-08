class Book < ApplicationRecord
  belongs_to :user
  has_many :recommendations

  mount_uploader :book_image, BookImageUploader
  
  acts_as_commentable
end
