class RemoveFirstNameFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :firnstame, :text
  end
end
