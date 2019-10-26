class CreateHowmanies < ActiveRecord::Migration[5.1]
  def change
    create_table :howmanies do |t|
      t.string :name

      t.timestamps
    end
  end
end
