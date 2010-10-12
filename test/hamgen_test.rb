require 'rubygems'
require 'test/unit'
require 'colored'
require 'fileutils'

class HamgenTest < Test::Unit::TestCase
  def initialize(arg)
    @path = File.dirname(__FILE__) + '/../'
    @exec = @path + "bin/hamgen"
    @app_name = "test_app"
    @app_path = @path + "test_app"
    super(arg)
  end

  def test_has_rvm_setup
    list = `rvm list`
    assert list.include?("ruby-1.8.7"), "Need rvm with 1.8.7 installed to run tests"
    assert list.include?("ruby-1.9.2"), "Need rvm with 1.9.2 installed to run tests"
  end
  
  def test_runs_generator
    result = build
    assert !result.include?("Error"), "Threw an error"
  end
  
  def build(options = "")
    `#{@exec} #{options} test_app`
  end

  def teardown
    FileUtils.rm_rf(@app_path)
  end
end