class CreateJournals < ActiveRecord::Migration[5.0]
  def change
    create_table :journals do |t|
      t.text :journal_title
      t.integer :number_of_entries
      t.text :time_period
      t.integer :word_count
      t.text :user_id

      t.timestamps
    end
  end
end
