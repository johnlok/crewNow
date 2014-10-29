class DropRelationshipTables < ActiveRecord::Migration
  def change
    drop_table :trip_crew_relationships
    drop_table :trip_crew_membership_availabilities
  end
end
