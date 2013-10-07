require 'test/unit'
load './chop.rb'

class ChopTest < Test::Unit::TestCase
  def test_chop
    assert_equal(-1, chop(1, []))
    assert_equal(0, chop(10, [10]))
  end
end
