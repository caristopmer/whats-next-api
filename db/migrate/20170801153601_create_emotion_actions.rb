class CreateEmotionActions < ActiveRecord::Migration[5.1]
  def change
    create_table :emotion_actions do |t|
      t.integer :emotion_id
      t.integer :action_id
    end
  end
end
