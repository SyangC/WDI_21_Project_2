class User < ApplicationRecord
  mount_uploader :avatar_image, AvatarImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :created_books, class_name: "Book", foreign_key: "user_id", dependent: :destroy
  has_and_belongs_to_many :books_commenting, class_name: "Book", join_table: "books_users"

  has_many :recommendations

end
