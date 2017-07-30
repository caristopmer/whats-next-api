class RemoveEmotionIdFromRecommendations < ActiveRecord::Migration[5.1]
  def change
    remove_column :recommendations, :emotion_id, :integer
  end
end
