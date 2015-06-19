require "gcodify/opsmixin"

module Gcodify
  class Program
    attr_accessor :ops
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
        gcode << op.to_gcode
      end
      gcode
    end
  end
end
