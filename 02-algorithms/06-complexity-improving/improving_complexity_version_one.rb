# Optimizes
require 'benchmark'

 def poorly_written_ruby(*arrays)
  combined_array = []

  arrays.flatten.each do |item|
    length = combined_array.length

    if length === 0
      combined_array << item
    else
      i = 0
      while i < length
        val = combined_array[i]
        if val > item
          combined_array.insert(i, item)
          break
        elsif i === length - 1
          combined_array << item
          break
        end
        i+=1
      end
    end
  end
  # Return the sorted array
  combined_array
end

 array1 = [67, 34, 94, 52, 0]
 array2 = [54, 33, 72, 348, 7]
 poorly_written_ruby(array1, array2)

 irb
 puts Benchmark.measure{ poorly_written_ruby(array1, array2) }
 #user     system      total        real
 0.000000   0.000000   0.000000 (  0.000019)