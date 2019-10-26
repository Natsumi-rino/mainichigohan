class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :whattime
      t.integer :howmany
      t.text :free
      t.string :website

      t.timestamps
    end
  end
end
