require 'gcodify/op'

module Gcodify::Ops
  class HoleOp < Gcodify::Op
  	def initialize(options)
  		@options = options
  		@options[:r_position] = @options[:r_position] || 0.2
  	end

    def to_gcode
      gcode = "Z1.0\n"
      gcode << "X#{@options[:at][0]} Y#{@options[:at][1]}"
      gcode << "G99 G81 R#{@options[:r_position]} Z#{@options[:depth] + @options[:r_position]}\n"
      gcode << "G80\n"
    end
  end
end
