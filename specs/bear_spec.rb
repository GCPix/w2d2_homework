require('Minitest/autorun')
require('Minitest/rg')

require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTest < Minitest::Test

  def setup
    @bear1 = Bear.new("Baloo", "Brown Bear")
    @bear2 = Bear.new("Yogi", "Black Bear")
    @fish1 = Fish.new("Goldie")
    @fish2 = Fish.new("Nemo")
    @fish3 = Fish.new("Dory")

    fishes = [@fish1, @fish2, @fish3]

    @river1 = River.new("The Nile", fishes)


  end

  def test_take_fish_from_river
    @bear1.remove_from_river(@river1, @fish3)
    assert_equal(1, @bear1.stomach_count)
    assert_equal(2, @river1.fish_count)
  end

  def test_bear_sounds_not__Baloo
  assert_equal("Roar", @bear2.bear_sound)
  end

  def test_bear_sounds__Baloo
    assert_equal("Hello", @bear1.bear_sound)
  end
end
