class CreateTripCrewRelationships < ActiveRecord::Migration
  def change
    create_table :trip_crew_relationships do |t|
      t.integer :trip_id
      t.integer :crewmember_id
      t.string :status

      t.timestamps
    end
  end
end
