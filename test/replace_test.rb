require 'test/unit'
require './object_model/replace'

class ReplaceTest < Test::Unit::TestCase
  def test_replace
    original = ['one', 'two', 'one', 'three']
    replaced = original.replace('one', 'zero')
    assert_equal ['zero', 'two', 'zero', 'three'], replaced
  end
end
