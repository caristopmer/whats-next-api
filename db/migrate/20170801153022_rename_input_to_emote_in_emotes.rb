class RenameInputToEmoteInEmotes < ActiveRecord::Migration[5.1]
  def change
    rename_column :emotes, :input, :emote
  end
end
