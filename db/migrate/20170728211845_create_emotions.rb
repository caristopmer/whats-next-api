class CreateEmotions < ActiveRecord::Migration[5.1]
  def change
    create_table :emotions do |t|
      t.string   :name, null: false

      t.timestamps
    end
  end
end
