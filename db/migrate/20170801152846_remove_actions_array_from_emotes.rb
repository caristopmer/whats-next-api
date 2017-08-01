class RemoveActionsArrayFromEmotes < ActiveRecord::Migration[5.1]
  def change
    remove_column :emotes, :actions_array, :string
  end
end
