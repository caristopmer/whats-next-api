class CreateEmotes < ActiveRecord::Migration[5.1]
  def change
    create_table :emotes do |t|
      t.string   :input, null: false
      t.references  :recommendation, foreign_key: true, null: false

      t.timestamps
    end
  end
end
