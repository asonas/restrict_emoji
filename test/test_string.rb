require 'minitest/autorun'
require 'minitest/unit'
require './lib/restrict_emoji'

class TestString < MiniTest::Unit::TestCase
  def setup
    @string = "hello world🙆"
  end

  def test_restrict_emoji
    assert_equal "hello world", @string.restrict_emoji
  end
end
