require "docking_station"
require "bike"

describe DockingStation do
  it "DockingStation respond_to? release_bike" do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it "gets bike" do
    expect(DockingStation.new.release_bike.working?).to eq true
  end

  it "can we release_bike?" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

end

#Use an instance variable with attr_reader to
#do a full test-implementation
#cycle for the second User Story above
#require_relative './lib/docking_station.rb'
