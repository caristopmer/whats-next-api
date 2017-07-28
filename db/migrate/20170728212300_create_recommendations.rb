class CreateRecommendations < ActiveRecord::Migration[5.1]
  def change
    create_table :recommendations do |t|
      t.references  :emotion, foreign_key: true, null: false
      t.references  :action, foreign_key: true, null: false

      t.timestamps
    end
  end
end
