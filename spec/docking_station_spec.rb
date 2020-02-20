require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it {is_expected.to respond_to(:dock).with(1).argument }

  describe "#release_bike" do
    it 'releases working bikes' do 
      bike = Bike.new
      expect(bike).to be_working
    end
  end

  # it 'docks bikes' do 
  #   subject.dock(Bike.new)
  #   expect(subject.bikes.dock(Bike.new)[-1]).to eq bike
  # end

  # it {is_expected.to respond_to :bikes}

  it 'raise error' do
    bike = DockingStation.new
    expect {station.release_bike}.to raise_error
  end

  it 'raises error when docking station is full' do
    DockingStation::DEFAULT_CAPACITY.times do
      subject.dock(Bike.new)
    end
    expect{ subject.dock(Bike.new) }.to raise_error
  end

  it "changes the capacity when necessary" do
    expect(subject.capacity(40)).to eq 40
  end


end
















  # it { is_expected.to respond_to(:dock).with(1).argument }
  # it { is_expected.to respond_to(:bike)}

  # it 'return docked bikes' do
  #   bike = Bike.new
  #   subject.dock(bike)
  #   expect(subject.bike).to eq bike
  # end
# end 