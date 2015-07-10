# {OpsMixin} is used as a Mixin to {Program} for the DSL - all of the DSL's methods,
# ie. hole, pocket, face, etc. are implemented here, and then `import`ed into
# {Program}, for DRYness and reusability.
# All methods contained in {OpsMixin} return a subclass of Op, ie. HoleOp, PocketOp, and so on.
module Gcodify::OpsMixin
  # options is a Hash
  # standard stuff in options for all these functions
  # not every op will use all of these.
  # :at - where to put the feature
  # :depth - how deep the feature should be
  # :radius - radius of the feature
  # :diameter - diameter of the feature, behavior is undefined when specified at the same time as :radius
  # :peck - peck step depth for peck drilling
  # :return_height - return height for pecking during peck drilling. if not specified, pecking will not return to a constant height
  #
  # @return [HoleOp] a hole-drilling operation
  def hole(options)
    @ops << Gcodify::Ops::HoleOp.new(options)
  end

  # (see #hole)
  # @return [PocketOp] a pocketing operation
  def circular_pocket(options)
  end

  # (see #hole)
  # @return [FaceOp] a facing operation
  def face(options)
  end

  # #gcode is a passthrough for gcode,
  # used when Gcodify doesn't provide some feature of gcode
  # that you might want to use.
  #
  # @param gcode [String] a line of gcode
  def gcode(code)
    @ops << Gcodify::Ops::GcodeOp(code)
  end
end
