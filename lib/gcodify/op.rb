module Gcodify
  # An Operation. An Operation is the unit of "doing". For instance, a drilled hole
  # is a single {Op}, a circular pocket is a single {Op}, and so on.
  # {Op}s are subclassed into things like HoleOp, PocketOp, etc., and each is responsible
  # for storing data and each provides its own implementation of #to_gcode.
  class Op
    # Converts the {Op} to Gcode. Each *{Op} has it's own implementation of #to_gcode,
    # depending on what gcode it has to generate.
    #
    # @return [String] some gcode
    def to_gcode
      "" # Return an empty string for testing purposes.
    end
  end
end
