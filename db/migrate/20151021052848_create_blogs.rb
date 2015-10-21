class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      # t.integer :comment_id
      t.integer :user_id
      t.text :content

      t.timestamps null: false
    end
  end
end
