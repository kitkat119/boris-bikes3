require 'docking_station'

describe DockingStation do
  # it 'responds to release_bike method' do
  #   expect(subject).to respond_to(:release_bike)
#  it { is_expected.to respond_to(:release_bike)}
  it { should respond_to(:release_bike)}

  it "releases a working bike" do
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end
end
