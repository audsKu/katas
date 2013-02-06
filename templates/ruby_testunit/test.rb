require_relative "test_helper"
require_relative "code"

class TestFoo < Test::Unit::TestCase
  def test_simple
    assert_equal "John Doe", "John Doe"
  end
end
