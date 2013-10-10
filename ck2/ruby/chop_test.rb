require 'test/unit'
load './chop.rb'

class ChopTest < Test::Unit::TestCase
  def test_chop
    assert_equal(-1, chop(1, []))
    assert_equal(0, chop(10, [10]))
    assert_equal(-1, chop(1, [10]))
    assert_equal(1, chop(11, [10, 11]))
    assert_equal(0, chop(10, [10, 11]))
    assert_equal(1, chop(11, [10, 11, 12, 13, 14]))
    assert_equal(2, chop(12, [10, 11, 12]))

    assert_equal(0, chop(11, [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]))
    assert_equal(1, chop(12, [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]))
    assert_equal(2, chop(13, [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]))
    assert_equal(3, chop(14, [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]))
    assert_equal(4, chop(15, [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]))
    assert_equal(5, chop(16, [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]))
    assert_equal(7, chop(18, [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]))
    assert_equal(8, chop(19, [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]))
    assert_equal(9, chop(20, [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]))
  end
end
