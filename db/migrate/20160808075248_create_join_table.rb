class CreateJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :recommendations, :books do |t|
      # t.index [:recommendation_id, :book_id]
      # t.index [:book_id, :recommendation_id]
    end
  end
end
