require 'gcodify/op'

module Gcodify::Ops
  class GcodeOp < Gcodify::Op
    def initialize(str)
      @str = str
    end

    def to_gcode
      @str
    end
  end
end
