require "docking_station"
require "bike"

describe "DockingStation" do
  it "DockingStation respond_to? release_bike" do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it "gets bike" do
    expect(DockingStation.new.release_bike.working?).to eq true
  end

  it "docking station responds to dock bike" do
    expect(DockingStation.new).to respond_to(:dock_bike)
  end

  it "docks bike" do
    expect(DockingStation.new.dock_bike).to eq 1
  end
end


#Write a unit test for the method you need to add to
#DockingStation to make docking possible
