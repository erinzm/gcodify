require 'gcodify/op'

module Gcodify::Ops
	# A passthrough {Op} for testing purposes.
	# It contains @str which is the string passed during
	# initialization, which will be returned by #to_gcode.
  class DummyOp < Gcodify::Op
  	# @param str [String] a string to be returned later for testing purposes
    def initialize(str)
      @str = str
    end

    # Returns the string that was passed in when initted.
    #
    # @return [String] the original dummy string
    def to_gcode
      @str
    end
  end
end
