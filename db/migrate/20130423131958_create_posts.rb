class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string     :title
      t.text       :content
      t.float      :price
      t.string     :user_email
      t.references :categories

      t.timestamps
    end
  end
end
