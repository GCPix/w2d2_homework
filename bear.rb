class Bear

def initialize(name, type)
  @name = name
  @type = type
  @stomach = []
end

  def bear_sound
    if @name == "Baloo"
      return "Hello"
    else
      return "Roar"
    end

  end

  def stomach_count
    return @stomach.length
  end
  def remove_from_river(river,fishy)
    #remove a random fish

      @stomach << fishy

    river.remove_fish_from_river(fishy)
  end
end
