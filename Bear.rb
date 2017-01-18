class Bear
  attr_reader :get_name, :bear_stomach
  def initialize(bear_name)
    @get_name = bear_name
    @bear_stomach = []
  end

  def eat_fish(river)
    @bear_stomach << river.fishes_in_the_water.first
    river.remove_fish(self)
  end

  def roar
    "ROAR!"
  end

  def food_count
    return @bear_stomach.count
  end
end

