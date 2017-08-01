class RemoveRecommendationIdFromEmotes < ActiveRecord::Migration[5.1]
  def change
    remove_column :emotes, :recommendation_id, :integer
  end
end
