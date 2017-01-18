class River
  attr_reader :get_name, :fishes_in_the_water
  def initialize(river_name, fish_array) 
    @get_name = river_name
    @fishes_in_the_water = fish_array
  end

  def fish_count
    return @fishes_in_the_water.count
  end

  #only bears can remove fishes
  def remove_fish(bear)
    bear.is_a?(Bear) ? fishes_in_the_water.shift : "Shoo, fish are only for the bears."
  end
end
