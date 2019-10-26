class CreateWhattimes < ActiveRecord::Migration[5.1]
  def change
    create_table :whattimes do |t|
      t.string :name

      t.timestamps
    end
  end
end
