require 'rake'
require 'rake/gempackagetask'
require 'rake/testtask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Run tests'
Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

spec = eval(File.read('hamgen.gemspec'))
Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

desc "Build and install local gem"
task "local" => "repackage" do
  puts "Installing locally... this might take a second"
  puts `gem install pkg/hamgen-#{File.read('VERSION').strip}.gem --no-ri --no-rdoc`
end
