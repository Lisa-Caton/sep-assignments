# Original
require 'benchmark'

 def poorly_written_ruby(*arrays)
   combined_array = []
   arrays.each do |array|
     array.each do |value|
       combined_array << value
     end
   end

   sorted_array = [combined_array.delete_at(combined_array.length-1)]

   for val in combined_array
     i = 0
     while i < sorted_array.length
       if val <= sorted_array[i]
         sorted_array.insert(i, val)
         break
       elsif i == sorted_array.length - 1
         sorted_array << val
         break
       end
       i+=1
     end
   end

   # Return the sorted array
   sorted_array
 end

 array1 = [67, 34, 94, 52, 0]
 array2 = [54, 33, 72, 348, 7]
 poorly_written_ruby(array1, array2)

 irb 
 puts Benchmark.measure{ poorly_written_ruby(array1, array2) }
 #user     system      total        real
 0.000000   0.000000   0.000000 (  0.000015)