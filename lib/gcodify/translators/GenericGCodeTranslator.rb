module GCodify
	module Translators
		class GenericGCodeTranslator
			def go_rapid(there, options = {})
				return "G00 #{there.to_gcode_coordinates} #{options[:feedrate] || ""} "
			end

			def go_linear(there, options = {})
				return "G01 #{there.to_gcode_coordinates} #{options[:feedrate] || ""} "
			end

			def cut(move, options = {})
				if move[:start] and move[:end]
					go_linear(move[:start], options)+go_linear(move[:end], options)
				elsif move[:end]
					go_linear(move[:end], options)
				end
			end

			def plunge(depth, options)
				return "G01 Z#{depth} #{options[:feedrate] || ""}"
			end

			def dwell(time)
				return "G04 P#{time}"
			end

			def tool(number)
				return "T#{number} M06"
			end

			def spinup(speed, direction)
				if direction == :clockwise
					return "S#{speed} M03"
				elsif direction == :counterclockwise
					return "S#{speed} M04"
				end
			end

			def cuttercomp(radius)
			end
		end
	end
end