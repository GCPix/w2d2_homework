class River

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def fish_count()
    return @fish.length
  end

  def remove_fish_from_river(fish)
    @fish.delete(fish)
  end

end
