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
  def hole(options)
  end
end
