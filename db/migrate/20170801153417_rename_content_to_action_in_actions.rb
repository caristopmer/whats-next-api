class RenameContentToActionInActions < ActiveRecord::Migration[5.1]
  def change
    rename_column :actions, :content, :action
  end
end
