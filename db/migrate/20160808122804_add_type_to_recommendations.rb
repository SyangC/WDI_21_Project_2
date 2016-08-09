class AddTypeToRecommendations < ActiveRecord::Migration[5.0]
  def change
    add_reference :recommendations, :type, foreign_key: true
  end
end
