module Gcodify
  # An Operation. An Operation is the unit of "doing". For instance, a drilled hole
  # is a single {Op}, a circular pocket is a single {Op}, and so on.
  # {Op}s are subclassed into things like HoleOp, PocketOp, etc., and each is responsible
  # for storing data and each provides its own implementation of #to_gcode.
  # @!attribute [r] options
  #   @return [Hash] the options passed to the Op. Used for testing.
  class Op
    attr_reader :options

    # @param options [Hash] a {Hash} of options to be passed in to the op
    def initialize(options)
      @options = options
    end

    # Converts the {Op} to Gcode. Each *{Op} has it's own implementation of #to_gcode,
    # depending on what gcode it has to generate.
    #
    # @return [String] some gcode
    def to_gcode
      "" # Return an empty string for testing purposes.
    end
  end
end
