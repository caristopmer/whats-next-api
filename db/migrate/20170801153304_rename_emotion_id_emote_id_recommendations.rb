class RenameEmotionIdEmoteIdRecommendations < ActiveRecord::Migration[5.1]
  def change
    rename_column :recommendations, :emotion_id, :emote_id
  end
end
