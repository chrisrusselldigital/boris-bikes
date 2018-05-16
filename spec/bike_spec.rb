require 'bike'

describe "Bike" do
  it "responds to working?" do
    expect(Bike.new).to respond_to(:working?)
  end

  it "bike responds to dock bike" do
    expect(Bike.new).to respond_to(:dock_bike)
  end

  it "docks bike" do
    expect(Bike.new.dock_bike).to eq true
  end

  it "checks if bike is docked" do
    expect(Bike.new.dock_bike?).to eq true
  end
end
