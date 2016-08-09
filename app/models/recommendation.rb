class Recommendation < ApplicationRecord
  belongs_to :book
  belongs_to :type
  belongs_to :user

  acts_as_votable
  
  acts_as_commentable
end
