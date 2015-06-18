class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.integer :comment_id
      t.integer :user_id, null: false
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end
