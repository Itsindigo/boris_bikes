require 'bike.rb'

describe Bike do
	it {is_expected.to respond_to :working?} 
	it 'returns false if bike broken' do
		expect(subject.report_broken).to eq false 
	end
end 