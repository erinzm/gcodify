require "gcodify/opsmixin"

module Gcodify
  # Represents a GCode program. It contains a property @ops, which is an array
  # of all the ops, in order, in the program.
  class Program
    # Access all ops in the program
    attr_accessor :ops
    # Mix in all the op functions for the DSL :D
    include OpsMixin

    def initialize
      @ops = []
    end

    # Converts the {Program} to a Gcode string
    #
    # @return [String] the Gcode
    def to_gcode
      gcode = ""
      @ops.each do |op|
        # Append that Op's generated gcode to the full gcode string
        gcode << op.to_gcode
      end
      gcode # Return the generated gcode
    end
  end
end
