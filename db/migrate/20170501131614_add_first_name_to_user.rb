class AddFirstNameToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :firstname, :text
  end
end
