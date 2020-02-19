require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it {is_expected.to respond_to(:dock).with(1).argument }

  it 'releases working bikes' do 
    subject.dock(Bike.new)

    expect(subject.release_bike).to be_working
  end

  it 'docks bikes' do 
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it {is_expected.to respond_to :bike}

  it 'raise error' do
    bike = DockingStation.new
    expect {station.release_bike}.to raise_error
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