require "docking_station"
require "bike"

describe "DockingStation" do
  it "DockingStation respond_to? release_bike" do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it "gets bike" do
    expect(DockingStation.new.release_bike.working?).to eq true
  end
end



# Add a test to your DockingStation specification that
# a) gets a bike, and then b) expects the bike to be working
