require('Minitest/autorun')
require('Minitest/rg')

require_relative('../fish')
require_relative('../river')

class RiverTest < Minitest::Test

  def setup

    @fish1 = Fish.new("Jaws")
    @fish2 = Fish.new("Carpie")
    @fish3 = Fish.new("Cody")


    @river1 = River.new("The Nile", [@fish1, @fish2, @fish3])
  end

def test_fish_count
  expected = 3
  actual = @river1.fish_count()

  assert_equal(expected, actual)
end
end
