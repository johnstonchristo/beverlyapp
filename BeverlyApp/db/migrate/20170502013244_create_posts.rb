class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :post_title
      t.text :post_content
      t.integer :journal_id

      t.timestamps
    end
  end
end
