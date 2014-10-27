require 'rails_helper'

RSpec.describe "trips/new", :type => :view do
  before(:each) do
    assign(:trip, Trip.new(
      :boat_name => "MyString",
      :trip_organizer => "MyString",
      :trip_description => "MyString",
      :trip_attendees => 1,
      :trip_attendee_limit => 1,
      :race_id => 1
    ))
  end

  it "renders new trip form" do
    render

    assert_select "form[action=?][method=?]", trips_path, "post" do

      assert_select "input#trip_boat_name[name=?]", "trip[boat_name]"

      assert_select "input#trip_trip_organizer[name=?]", "trip[trip_organizer]"

      assert_select "input#trip_trip_description[name=?]", "trip[trip_description]"

      assert_select "input#trip_trip_attendees[name=?]", "trip[trip_attendees]"

      assert_select "input#trip_trip_attendee_limit[name=?]", "trip[trip_attendee_limit]"

      assert_select "input#trip_race_id[name=?]", "trip[race_id]"
    end
  end
end
