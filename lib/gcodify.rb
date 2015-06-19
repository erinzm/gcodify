require "gcodify/version"
require "gcodify/program"

module Gcodify
  def self.program(&block)
    prog = Program.new
    prog.instance_eval(&block)
    prog
  end
end
