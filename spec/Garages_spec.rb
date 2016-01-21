require 'Garages.rb'


describe Garages do
	let(:van) {double :van}
	let(:docking_station) {double :docking_station}

	it 'accepts broken bikes' do
		allow(van).to_fix{:take_broken}
		expect(subject.take_broken).to eq take_broken
	end
end