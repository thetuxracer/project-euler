require 'benchmark'

def sum_square_difference(n_numbers)

  sum_of_squares = (1..n_numbers).collect { |i|  i ** 2 }.inject { |runn_total, item| runn_total + item}

  square_of_sums = (1..n_numbers).inject { |runn_total, item| runn_total + item} ** 2 

  puts square_of_sums - sum_of_squares

end

puts Benchmark.measure{sum_square_difference(100)}
