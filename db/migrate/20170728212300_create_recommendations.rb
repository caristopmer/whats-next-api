class CreateRecommendations < ActiveRecord::Migration[5.1]
  def change
    create_table :recommendations do |t|
      t.integer  :emotion_id, null: false
      t.integer  :action_id, null: false

      t.timestamps
    end
  end
end
