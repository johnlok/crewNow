class AddRaceIdToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :race_id, :integer
  end
end
