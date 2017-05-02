class RemoveUserIdFromJournal < ActiveRecord::Migration[5.0]
  def change
    remove_column :journals, :user_id, :text
  end
end
