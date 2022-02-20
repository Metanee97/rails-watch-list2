class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.text :comment
      t.integer :movie_id, foreign_key: true
      t.integer :list_id, foreign_key: true

      t.timestamps
    end
  end
end
