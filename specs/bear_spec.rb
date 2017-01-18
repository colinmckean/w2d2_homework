require 'minitest/autorun'
require 'minitest/rg'
require_relative '../River'
require_relative '../Fish'
require_relative '../Bear'

class TestBus < MiniTest::Test
  def setup
    @bear = Bear.new("Sid")
    @fishes = [
    fish1 = Fish.new("Steve"),
    fish2 = Fish.new("Ally"),
    fish3 = Fish.new("John")]

    @river = River.new("The big wet river", @fishes)
  end
  def test_bear_name
    assert_equal("Sid",@bear.get_name)
  end
  def test_bear_is_hungry
    assert_equal([], @bear.bear_stomach)
  end

  def test_bear_can_eat_fish()
    @bear.eat_fish(@river)
    assert_equal(2, @river.fish_count)
    assert_equal(1, @bear.food_count)
    @bear.eat_fish(@river)
    assert_equal(1, @river.fish_count)
    assert_equal(2, @bear.food_count)
  end
  def test_cats_cant_eat_fish
    assert_equal("Shoo, fish are only for the bears.", @river.remove_fish("meow, i can haz fish please?"))
  end

  def test_bear_can_roar
    assert_equal("ROAR!", @bear.roar)
  end
end