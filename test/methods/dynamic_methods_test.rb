require 'test/unit'
require './methods/computer/dynamic_methods'
require './methods/computer/data_source'

class DynamicMethodsTest < Test::Unit::TestCase
  def test_computer
    data_source = DS.new
    c = Computer.new(1, data_source)

    assert_equal c.cpu,   "* Cpu: 2.9Ghz ($320)"
    assert_equal c.mouse, "Mouse: MS ($10)"
    assert_equal c.keyboard, "* Keyboard: LogiCool ($130)"
  end
end
