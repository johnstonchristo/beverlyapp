class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :title
      t.text :firnstame
      t.text :lastname
      t.text :email
      t.text :password
      t.text :password_digest
      t.text :email

      t.timestamps
    end
  end
end
