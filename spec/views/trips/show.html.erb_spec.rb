require 'rails_helper'

RSpec.describe "trips/show", :type => :view do
  before(:each) do
    @trip = assign(:trip, Trip.create!(
      :boat_name => "Boat Name",
      :trip_organizer => "Trip Organizer",
      :trip_description => "Trip Description",
      :trip_attendees => 1,
      :trip_attendee_limit => 2,
      :race_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Boat Name/)
    expect(rendered).to match(/Trip Organizer/)
    expect(rendered).to match(/Trip Description/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
