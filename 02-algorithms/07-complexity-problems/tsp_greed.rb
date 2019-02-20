require_relative 'city'

def nearest_possible_neighbor(current_city, target_city, path=[])
  current_city.visited = true
  path << current_city.name
  until current_city.name == target_city.name
    neighbor_cities = current_city.neighbors
    next_city = nil

    for neighbor in neighbor_cities
      unless neighbor.visited == true
        if next_city.nil?
          next_city = neighbor
        end
        if neighbor.distance(current_city) < next_city.distance(current_city)
          next_city = neighbor
        end
      end
    end
    path << next_city.name
    next_city.visited = true
    current_city = next_city

  end

  return path
end