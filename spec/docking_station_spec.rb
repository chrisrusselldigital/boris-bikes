require "docking_station"
# require "bike"

describe DockingStation do
  # it {is_expected.to respond_to(:release_bike)}

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike).last).to eq bike
  end

  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

  end

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  describe "#release_bike" do
    it "raises an error when there are no bikes available" do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end

  describe "#dock" do
    it "raise an error when full" do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error "Docking station full"
    end
    it "has a default capacity" do
      expect(subject.capacity).to  eq DockingStation::DEFAULT_CAPACITY 
    end
  end

  describe "initialization" do
    it "has a variable capacity" do
      docking_station = DockingStation.new(50)
      50.times {}
    end
  end



end

#Use an instance variable with attr_reader to
#do a full test-implementation
#cycle for the second User Story above
#require_relative './lib/docking_station.rb'
# did I contribute something?
