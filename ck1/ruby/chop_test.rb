require 'test/unit'
load './chop.rb'

class ChopTest < Test::Unit::TestCase
  def test_chop
    assert_equal(-1, chop(1, []))
  end
end


