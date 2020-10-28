require_relative "../lib/docking_station.rb"

describe DockingStation do
  it "sends error as there is no bike" do
    expect { DockingStation.new.release_bike }.to raise_error
  end

  describe "dock_bike" do
    it { is_expected.to respond_to(:dock_bike).with(1).argument }
    it { is_expected.to respond_to(:bike)}
    it { is_expected.to_not eq (nil)}
    it 'docks something' do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq bike
    end

  end

end

