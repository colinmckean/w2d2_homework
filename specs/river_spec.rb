require 'minitest/autorun'
require 'minitest/rg'
require_relative '../River'
require_relative '../Fish'
require_relative '../Bear'

class TestRiver < MiniTest::Test
  def setup
    @fishes = [
    fish1 = Fish.new("Steve"),
    fish2 = Fish.new("Ally"),
    fish3 = Fish.new("John")]

    @river = River.new("The big wet river", @fishes)
  end

  def test_river_name
    assert_equal("The big wet river",@river.get_name)
  end

  def test_fish_count
    assert_equal(3, @river.fish_count)
  end

end