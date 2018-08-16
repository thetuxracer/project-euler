require 'benchmark'
puts Benchmark.measure{
  INFINITY = 110000
  nth = 1
  primes = []
  (1..INFINITY).each do |i|
    factor = 0
    
    next if i%2 == 0

    (3..i).each do |j|
      if (i%j == 0)
        factor += 1
        break if factor > 1
      end
      break if factor > 1
    end
    if (factor == 1)
      primes << i 
      nth += 1
    end

    break if nth == 10001
  end
  puts primes.last
}
