require "docking_station"

describe "DockingStation" do
  it "DockingStation respond_to? release_bike" do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
end
