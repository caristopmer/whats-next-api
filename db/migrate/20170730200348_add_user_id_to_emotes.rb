class AddUserIdToEmotes < ActiveRecord::Migration[5.1]
  def change
    add_column :emotes, :user_id, :integer
  end
end
