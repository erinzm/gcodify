require 'gcodify/coordinates'

RSpec.describe GCodify::Coordinate do
	describe '#to_gcode_coordinates' do
		it "converts the coordinates to gcode X[x] Y[y] Z[z]" do
			coordinate = GCodify::Coordinate.new(1, 2, 3)
			expect(coordinate.to_gcode_coordinates).to eq('X1 Y2 Z3')
		end
	end
end
