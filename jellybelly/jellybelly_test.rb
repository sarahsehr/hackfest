
require 'rubygems'
require 'test/unit'
require 'mocha'
require File.dirname(__FILE__) + '/jellybelly'

class JellyBellyTest < Test::Unit::TestCase

  def test_should_print_jelly_when_number_is_divisble_by_3
    jellybelly = JellyBelly.new


    assert_equal "3 Jelly", jellybelly.get_string(3)
  end

  def test_should_print_belly_when_number_is_divisible_by_5
    jellybelly = JellyBelly.new
    assert_equal "5 Belly", jellybelly.get_string(5)
    
  end
  def test_should_print_jellybelly_when_number_is_divisible_by_3_and_5
    jellybelly = JellyBelly.new

    assert_equal "15 JellyBelly!", jellybelly.get_string(15) 
  end

  def test_should_print_the_number
    jellybelly = JellyBelly.new   

    assert_equal "7", jellybelly.get_string(7) 
  end

  def test_should_print_out_all_numbers_less_than_the_parameter
    jellybelly = JellyBelly.new
    output = []
    IO.any_instance.expects(:puts).with { |s| output << s }
    out = jellybelly.print_all(4) 
   
    assert_equal ["1", "2", "3 Jelly", "4"]   
  end
end
