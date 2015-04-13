require 'spec_helper'
require 'gcodify/features/MachinedHole.rb'

RSpec.describe GCodify::Features::MachinedHole do
	describe '#new' do
		it 'returns a new instance of MachinedHole' do
			machinedhole = GCodify::Features::MachinedHole.new(10, 10)
			expect(machinedhole).to be_instance_of(GCodify::Features::MachinedHole)
		end
	end
	describe '#diameter' do
		it 'returns the diameter of the hole' do
			machinedhole = GCodify::Features::MachinedHole.new(10, 20)
			expect(machinedhole.diameter).to eq(10)
		end
	end
	describe '#depth' do
		it 'returns the depth of the hole' do
			machinedhole = GCodify::Features::MachinedHole.new(10, 20)
			expect(machinedhole.depth).to eq(20)
		end
	end
end

RSpec.describe GCodify::Features::MachinedHoleBuilder do
	describe '#build' do
		it 'builds a MachinedHole from a MachinedHoleBuilder' do
			expect(GCodify::Features::MachinedHoleBuilder.new
				.diameter(10).depth(50).build)
				.to be_instance_of(GCodify::Features::MachinedHole)
		end
	end
end