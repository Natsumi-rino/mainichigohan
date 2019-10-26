class RenameWhattimeColumnToPosts < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :whattime, :whattime_id
  end
end
