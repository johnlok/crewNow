class DropTripIdFromCrewMember < ActiveRecord::Migration
  def change
    remove_column :crew_members, :trip_id
  end
end
