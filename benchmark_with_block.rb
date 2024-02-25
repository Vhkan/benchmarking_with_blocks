def benchmark
 start_time = Time.now
 #checking if the block given to our method using Kernel method which returns true/false
 yield if block_given?
 end_time = Time.now
 end_time - start_time  
end
 
long_string = "apple"*100000000
 #passing a "long_string.reverse" block to benchmark method and assigning it to running_time
running_time = benchmark { long_string.reverse }
 
puts "string.reverse took #{running_time} seconds to run."