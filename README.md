# Gcodify

[![Build Status](https://travis-ci.org/ArchimedesPi/gcodify.svg?branch=master)](https://travis-ci.org/ArchimedesPi/gcodify) [![Inline docs](http://inch-ci.org/github/ArchimedesPi/gcodify.svg?branch=master)](http://inch-ci.org/github/ArchimedesPi/gcodify) [![Code Climate](https://codeclimate.com/github/ArchimedesPi/gcodify/badges/gpa.svg)](https://codeclimate.com/github/ArchimedesPi/gcodify) [![Coverage Status](https://coveralls.io/repos/ArchimedesPi/gcodify/badge.svg?branch=master)](https://coveralls.io/r/ArchimedesPi/gcodify?branch=master)

Gcodify is a Ruby DSL for more easily hand-writing gcode. When it comes time to make something in the physical world on a mill or lathe, if you don't have a CAD model, then you're going to have to manually write gcode, which is **NOT FUN**. Even if you do, CAM software is a pain to use, and may be harder to configure than hand-writing gcode. Gcodify makes handwriting gcode fun - forget the look-up of obscure gcode features and just write the things you want made, like cuts, holes, and pockets. Like CAM, but handwritten!

## Feature status list
* DSL (✔)
* Holes (with a drill-bit in a chuck on the spindle) (✔)
* Pockets (✘)
* Facing (✘)
* Manual gcode entry (✔)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gcodify'
```

And then just `$ bundle`.
Or install it yourself:

    $ gem install gcodify

## Usage

Write a new ruby file that requires `gcodify`:

```ruby
require 'gcodify'
```

Tell it that you want a program with certain features:

```ruby
program = GCodify.program do
    hole :at=>[0, 0], depth=>0.13
end
puts program.to_gcode # output the program's gcode to stdout
```

Then run it: `$ ruby some_gcodify_script.rb > some_gcodify_script.gcode`.
You just made a gcode program which makes a hole at the origin!

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ArchimedesPi/gcodify. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
