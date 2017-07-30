class AddEmoteIdToRecommendations < ActiveRecord::Migration[5.1]
  def change
    add_column :recommendations, :emote_id, :integer
  end
end
