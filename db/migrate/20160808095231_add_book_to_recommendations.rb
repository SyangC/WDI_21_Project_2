class AddBookToRecommendations < ActiveRecord::Migration[5.0]
  def change
    add_reference :recommendations, :book, foreign_key: true
  end
end
