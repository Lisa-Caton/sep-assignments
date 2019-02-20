require_relative 'city'
require_relative 'tsp_greed'

sanfran = City.new("San Francisco", [-10, -2])
newyork = City.new("New York City", [6, 0])
denver = City.new("Denver", [-4, -2])
chicago = City.new("Chicago", [0, 0])
atlanta = City.new("Atlanta", [3, -4])
dallas = City.new("Dallas", [-1, -4])
dc = City.new("Washington D.C.", [5, -1])

sanfran.create_neighbors([denver])
newyork.create_neighbors([chicago, atlanta, dc])
denver.create_neighbors([chicago, sanfran, dallas])
atlanta.create_neighbors([chicago, newyork, dc])
chicago.create_neighbors([denver, newyork, atlanta, dallas, dc])
dallas.create_neighbors([chicago, denver, atlanta])
dc.create_neighbors([newyork, chicago, atlanta])

puts "#{nearest_possible_neighbor(sanfran, newyork)}"