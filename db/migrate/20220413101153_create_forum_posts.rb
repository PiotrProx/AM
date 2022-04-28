class CreateForumPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :forum_posts do |t|
      t.integer :ID_User
      t.integer :ID_Role
      t.string :content
      t.string :description
      t.boolean :isHandBook
      t.string :title

      t.timestamps
    end
  end
end
