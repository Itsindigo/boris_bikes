<<<<<<< HEAD
require 'DockingStation'

describe DockingStation do
	subject(:DockingStation) {described_class.new}
	DEFAULT_CAPACITY = 20
  	it { is_expected.to respond_to :release_bike }

  		describe "#intitalize" do
  			station = DockingStation.new
  			it "Initialize should set default capacity 20" do  
  				expect(station.capacity).to eq DockingStation::DEFAULT_CAPACITY
  			end
  		end

		describe "#release_bike" do
			it "releases a bike" do
				bike = Bike.new
				subject.dock(bike)
				expect(subject.release_bike).to eq bike
			end

			it 'expects bike to be working in release_bike' do
				bike = Bike.new
				expect(bike.working?).to be true
			end
		end
		describe "release bike failure" do
				it "Should raise error if bikes not available" do
					expect { subject.release_bike }.to raise_error "No Bike Error"
				end
		end

		describe "#dock_bike" do
			bike = Bike.new #basically the same as if we ran release bike first
			it 'returns docked bike' do
	    		# subject.dock(bike)
				expect(subject.dock(bike)).to eq bike
			end

			it 'should raise error if dock is full' do
				subject.capacity.times do
					 subject.dock(bike)
				end
				expect { subject.dock(bike) }.to raise_error "Dock Full"
			end
		end



		it { is_expected.to respond_to(:bikes)}

		it { is_expected.to respond_to(:dock).with(1).argument }

=======
require 'DockingStation.rb'

describe DockingStation do

	let(:bike) { double :bike }

	it {is_expected.to respond_to :release_bike}

	describe 'initialize' do
		it 'initializes with a capacity' do
			station = DockingStation.new(40)
			expect(station.capacity).to eq 40
		end

		it 'initializes with a default capacity of 20' do
			expect(subject.capacity).to eq 20
		end
	end

	describe '#dock' do
		it 'docks a bike' do
			expect(subject.dock(bike)).to eq [bike]
		end

		it 'raises an error when full' do
			subject.capacity.times { subject.dock(bike) }
			expect { subject.dock(double(:bike)) }.to raise_error 'Docking station full'
		end
	end


	describe '#release_bike' do
		it 'releases a bike' do
			allow(bike).to receive(:working?).and_return(true)
			subject.dock(bike)
			expect(subject.release_bike(bike)).to eq bike
		end

		it 'fails to release bike if broken' do
			allow(bike).to receive(:report_broken).and_return(false)
			expect { subject.release_bike(bike) }.to raise_error(RuntimeError)
		end

		it 'raises an error when there are no bikes available' do
			expect { subject.release_bike(bike) }.to raise_error 'No bikes available'
		end

		it 'docking station should recieve all bikes' do
			expect(subject.dock(bike)).to eq [bike]
		end
	end
>>>>>>> de225b1de1e398d18cdb9adc0ca3dc433aa5e68a
end
