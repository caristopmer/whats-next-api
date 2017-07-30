class AddEmotionIdToActions < ActiveRecord::Migration[5.1]
  def change
    add_column :actions, :emotion_id, :integer
  end
end
