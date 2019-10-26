class AddDetailsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string
    # add_column :users, :profile, :text
    add_column :users, :place, :integer
    add_column :users, :age, :integer
    add_column :users, :sex, :integer
  end
end
