class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :author 
      t.string :title
      t.string :content
      t.integer :upvote
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
