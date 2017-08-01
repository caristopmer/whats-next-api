class AddActionsArrayToEmotes < ActiveRecord::Migration[5.1]
  def change
    add_column :emotes, :actions_array, :string, array: true, default: []
  end
end
