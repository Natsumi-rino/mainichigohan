class RenameHowmanyColumnToPosts < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :howmany, :howmany_id
  end
end
