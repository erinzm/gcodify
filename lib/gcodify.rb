require "gcodify/version"
require "gcodify/program"

module Gcodify
  # Takes a block of operations and creates a new {Program} from them.
  #
  # @example Using it to create a {Program}
  #   Gcodify.program do
  #     hole :at=>[0, 0], :depth=>0.25
  #   end
  # @param &block [Block] a block of operations (see Ops).
  # @return [Program] a program created from `&block`
  def self.program(&block)
    prog = Program.new
    prog.instance_eval(&block)
    prog
  end
end
