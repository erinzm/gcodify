module GCodify
	module Features
		class MachinedHole
			attr_accessor :diameter
			attr_accessor :depth

			def initialize(diameter, depth)
				@diameter = diameter
				@depth = depth
			end
		end
		class MachinedHoleBuilder
			def diameter(diameter)
				@diameter = diameter
			end
			def depth(depth); @depth = depth; end
			def build
				MachinedHole.new(@diameter, @depth)
			end
		end
		def machined_hole(&block)
			Docile.ds_eval(MachinedHoleBuilder.new, &block).build
		end
	end
end