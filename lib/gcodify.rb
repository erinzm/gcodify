require "gcodify/version"
require "gcodify/program"
require "gcodify/opsmixin"
require "gcodify/op"
require "gcodify/ops/holeop"
require "gcodify/ops/faceop"
require "gcodify/ops/pocketop"
require "gcodify/ops/gcodeop"
require "gcodify/ops/dummyop"

# {Gcodify} is the main module that contains all the code.
# The only thing you'll be interacting with directly when you use it as a DSL is
# the module method #program, which is passed a block as a DSL.
# @example Using #program for a DSL
#   aProgram = Gcodify.program do
#     # some code here
#   end
module Gcodify
  # Takes a block of operations and creates a new {Program} from them.
  #
  # @example Using it to create a {Program}
  #   Gcodify.program do
  #     hole :at=>[0, 0], :depth=>0.25
  #   end
  # @param block [Block] a block of operations (see Ops).
  # @return [Program] a program created from `&block`
  def self.program(&block)
    prog = Program.new
    prog.instance_eval(&block)
    prog
  end
end
