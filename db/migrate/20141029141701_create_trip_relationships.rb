class CreateTripRelationships < ActiveRecord::Migration
  def change
    create_table :trip_relationships do |t|
      t.integer :trip_id
      t.integer :crew_member_id
      t.string :status

      t.timestamps
    end
  end
end
