require 'docking_station'

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
end
