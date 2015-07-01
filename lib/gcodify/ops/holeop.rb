require 'gcodify/op'

module Gcodify::Ops
	# A hole to be drilled.
	# In @options, no :radius or :diameter is specified or necessary,
	# since that's determined by the drill-bit that you put in the machine.
  class HoleOp < Gcodify::Op
  	# Special notice: @options[:r_position] is what the drilling cycle will rapid down to,
  	# if not specified it's 0.2in
  	# 
  	# @param options [Hash] the options for the {HoleOp}
  	def initialize(options)
  		@options = options
  		@options[:r_position] = @options[:r_position] || 0.2
  	end

  	# Creates the gcode. {HoleOp} uses canned drill cycles.
  	# 
  	# @return [String] the generated gcode
    def to_gcode
      gcode = "Z1.0\n"
      gcode << "X#{@options[:at][0]} Y#{@options[:at][1]}"
      gcode << "G99 G81 R#{@options[:r_position]} Z#{@options[:depth] + @options[:r_position]}\n"
      gcode << "G80\n"
    end
  end
end
