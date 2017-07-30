class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :identifier
      t.string :identifier_type

      t.timestamps
    end
  end
end
