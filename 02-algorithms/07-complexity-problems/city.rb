class City
  attr_accessor :name
  attr_accessor :location
  attr_accessor :neighbors
  attr_accessor :visited

  def initialize (name, location)
    @name = name
    @location = location
    @visited = false
  end

  def distance(origin)
    x = origin.location[0] - @location[0]
    y = origin.location[1] - @location[1]
    d = Math.sqrt(x**2 + y**2)
    return d
  end

  def create_neighbors(neighbor_array)
    @neighbors = neighbor_array
  end
end