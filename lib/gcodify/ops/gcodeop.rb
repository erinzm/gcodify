require 'gcodify/op'

module Gcodify::Ops
	# An {Op} for passing through a line (or more) of GCode,
	# since there are things that haven't been implemented yet
	# that could be done in raw gcode.
	# {GcodeOp} passes through a string in the same manner as DummyOp,
	# but it adds '\n' to the end.
  class GcodeOp < Gcodify::Op
    def initialize(str)
      @str = str
    end

    def to_gcode
      @str+'\n'
    end
  end
end
