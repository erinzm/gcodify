require "gcodify/ops"

module Gcodify
  class Program
    :attr_reader ops
    include Ops

    # Converts the {Program} to a Gcode string
    #
    # @return [String] the Gcode
    def to_gcode
      gcode = ""
      @ops.each do |op|
        gcode << op.to_gcode
      end
    end
  end
end
