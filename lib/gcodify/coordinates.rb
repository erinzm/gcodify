module GCodify
	class Coordinate
		attr_accessor :x
		attr_accessor :y
		attr_accessor :z
		# For later.
		# attr_accessor :a

		# #initialize method on Coordinate for making a new coordinate.
		#
		# @param x [Float] x coordinate
		# @param y [Float] y coordinate
		# @param z [Float] z coordinate
		# @return 
		def initialize(x, y, z)
			@x = x
			@y = y
			@z = z
		end

		# Converts the set of coordinates to a GCode string in the form
		# X[x] Y[y] Z[z].
		def to_gcode_coordinates
			return "X#{@x} Y#{@y} Z#{@z}"
		end
	end
end

