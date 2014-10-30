class CreateCrewMembers < ActiveRecord::Migration
  def change
    create_table :crew_members do |t|
      t.string :name
      t.string :email
      t.string :tel
      t.text :bio
      t.boolean :notifications

      t.timestamps
    end
  end
end
