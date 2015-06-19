# {Ops} is used as a Mixin to {Program} for the DSL - all of the DSL's methods,
# ie. hole, pocket, face, etc. are implemented here, and then `import`ed into
# {Program}, for DRYness and reusability.
# All methods contained in {Ops} return a subclass of Op, ie. HoleOp, PocketOp, and so on.
module Gcodify::Ops
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
  # @return [HoleOp] an operation
  def hole(options)
  end

  # (see #hole)
  # @return [PocketOp] an operation
  def pocket(options)
  end

  # (see #hole)
  # @return [FaceOp] an operation
  def face(options)
  end
end
