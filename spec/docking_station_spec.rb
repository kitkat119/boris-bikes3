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
    expect{subject.dock(bike)}.to raise_error("I do apologise, this station is full")
  end
end
