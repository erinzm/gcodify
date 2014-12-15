require "bundler/gem_tasks"
require 'rspec/core/rake_task'
require "yard"

YARD::Rake::YardocTask.new(:doc)
RSpec::Core::RakeTask.new(:spec) do |t|
	t.rspec_opts = '--color --format doc'
end


task :test => [:spec]


task :default => :test