class AddEmotionIdToEmotes < ActiveRecord::Migration[5.1]
  def change
    add_column :emotes, :emotion_id, :integer
  end
end
