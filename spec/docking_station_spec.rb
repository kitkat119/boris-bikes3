require 'docking_station'

describe DockingStation do
  # it 'responds to release_bike method' do
  #   expect(subject).to respond_to(:release_bike)
#  it { is_expected.to respond_to(:release_bike)}
  bike = Bike.new
  it { should respond_to(:release_bike)}

  it "releases a working bike" do
    subject.dock(bike)
    released_bike = subject.release_bike
    expect(released_bike.working?).to eq true
  end

  it "raises an error when releasing a bike that isn't there" do
    expect{subject.release_bike}.to raise_error("I do apologise, there are no bikes available")
  end

  it "raises an error when trying to dock bike at full docking station" do
    DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
    expect{subject.dock(Bike.new)}.to raise_error("I do apologise, this station is full")
  end

  it "allows the user to set the capacity of the docking station" do
    ds = DockingStation.new(30)
    expect(ds.capacity).to eq 30
  end

  it "if the user doesn't specify capacity, it is set as 20" do
    expect(subject.capacity).to eq 20
  end

  it "user can report a bike broken when they dock it" do
    broken_bike = subject.dock_broken_bike
    expect(broken_bike.shift.working).to eq false
  end
end
