require 'spec_helper'

describe Gcodify::Program do
  it 'converts ops to gcode' do
    program = Gcodify::Program.new
    program.ops = [Gcodify::Ops::DummyOp.new("asdf")]
    expect(program.to_gcode).to eq("asdf");
  end
end
