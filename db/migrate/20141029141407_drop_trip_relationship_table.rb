class DropTripRelationshipTable < ActiveRecord::Migration
  def change
    drop_table :trip_relationships
  end
end
