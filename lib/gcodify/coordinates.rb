module GCodify
	class Coordinate
		attr_accessor :x
		attr_accessor :y
		attr_accessor :z
		# For later.
		# attr_accessor :a

		def new(x, y, z)
			@x = x
			@y = y
			@z = z
		end

		def to_gcode_coordinates
			return "X#{@x} Y#{@y} Z#{@z}"
		end
	end
end

