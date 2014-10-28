class RemoveRaceIdColumn < ActiveRecord::Migration
  def change
    remove_column :trips, :race_id
  end
end
