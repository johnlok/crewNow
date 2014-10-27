require 'rails_helper'

RSpec.describe "trips/index", :type => :view do
  before(:each) do
    assign(:trips, [
      Trip.create!(
        :boat_name => "Boat Name",
        :trip_organizer => "Trip Organizer",
        :trip_description => "Trip Description",
        :trip_attendees => 1,
        :trip_attendee_limit => 2,
        :race_id => 3
      ),
      Trip.create!(
        :boat_name => "Boat Name",
        :trip_organizer => "Trip Organizer",
        :trip_description => "Trip Description",
        :trip_attendees => 1,
        :trip_attendee_limit => 2,
        :race_id => 3
      )
    ])
  end

  it "renders a list of trips" do
    render
    assert_select "tr>td", :text => "Boat Name".to_s, :count => 2
    assert_select "tr>td", :text => "Trip Organizer".to_s, :count => 2
    assert_select "tr>td", :text => "Trip Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
