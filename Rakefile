require "rubygems"
require "rake/rdoctask"
require "rake/testtask"

task :default => :test

Rake::TestTask.new(:test) do |t|
  t.pattern = 'test/**/*.rb'
  t.verbose = true
end