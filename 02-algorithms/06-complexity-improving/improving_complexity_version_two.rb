# Improves Time Complexity
require 'benchmark'

def poorly_written_ruby(*arrays)
  arrays.flatten.sort
end

 array1 = [67, 34, 94, 52, 0]
 array2 = [54, 33, 72, 348, 7]
 poorly_written_ruby(array1, array2)
 
 irb
 puts Benchmark.measure{ poorly_written_ruby(array1, array2) }
 #user     system      total        real
 0.000000   0.000000   0.000000 (  0.000012)
