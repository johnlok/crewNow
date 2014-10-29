class AddTripIdToCrewMember < ActiveRecord::Migration
  def change
    add_column :crew_members, :trip_id, :int
  end
end
