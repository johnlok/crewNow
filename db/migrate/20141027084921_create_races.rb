class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.datetime :race_date
      t.string :race_name
      t.string :race_description
      t.string :race_location

      t.timestamps
    end
  end
end
