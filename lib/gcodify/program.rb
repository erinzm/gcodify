require "gcodify/ops"

module Gcodify
  class Program
    :attr_reader ops
    include Ops

    def to_gcode
      gcode = ""
      @ops.each do |op|
        gcode << op.to_gcode
      end
    end
  end
end
