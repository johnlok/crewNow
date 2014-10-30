class DropColumnFromCrewMember < ActiveRecord::Migration
  def change
    remove_column :crew_members, :confirmed
    remove_column :crew_members, :available
  end
end
