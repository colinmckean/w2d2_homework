require 'minitest/autorun'
require 'minitest/rg'
require_relative '../Fish'


class TestFish < MiniTest::Test
  def setup
    @fish = Fish.new("big fish")
  end
  def test_fish_name
    assert_equal("big fish",@fish.get_name)
  end
end