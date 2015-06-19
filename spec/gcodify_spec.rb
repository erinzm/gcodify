require 'spec_helper'

describe Gcodify do
  it 'has a version number' do
    expect(Gcodify::VERSION).not_to be nil
  end
  it 'works correctly with a dummy operation' do
    program = Gcodify.program do
      dummy "foo"
    end
    expect(program.to_gcode).to eq "foo"
  end
  it 'does useful work' do
    program = Gcodify.program do
      hole :at => [10, 10], :depth => 10
    end
    expect(program.to_gcode).not_to eq ""
  end
end
