require 'gcodify'
program = GCodify.program do
  hole :at=>[1, 1], depth=>0.13
  hole :at=>[1, -1], depth=>0.13
  hole :at=>[-1, -1], depth=>0.13
  hole :at=>[-1, 1], depth=>0.13
end
