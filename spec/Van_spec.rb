require 'Van.rb'



describe Van do

	let(:docking_station) {double :docking_station}
	let(:bike1) {double :bike1}
	let(:bike2) {double :bike2}
	let(:bike3) {double :bike3}	

	it 'vans collect broken bikes' do
		allow(bike1).to receive(:working?).and_return true
		allow(bike2).to receive(:working?).and_return false
		allow(bike3).to receive(:working?).and_return false
		allow(docking_station).to receive(:bikes).and_return([bike1, bike2, bike3])
		expect(subject.take_broken(docking_station)).to eq [bike2, bike3]
	end




end

