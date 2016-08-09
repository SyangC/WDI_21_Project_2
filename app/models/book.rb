class Book < ApplicationRecord

  has_many :recommendations

  mount_uploader :book_image, BookImageUploader

  belongs_to :creator, class_name: "User", foreign_key: "user_id"
  has_and_belongs_to_many :commenters, class_name: "User", join_table: "books_users" 

  has_and_belongs_to_many :genres
end
