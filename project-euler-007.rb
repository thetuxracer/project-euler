require 'benchmark'

INFINITY = 110000

def go_prime
  
  nth = 1
  primes = [2]
  (1..INFINITY).each do |i|
    factor = 0
    
    next if is_even i

    (3..i).each do |j|
      
      next if is_even j
      
      factor += 1 if can_factorize i, j
      break if factor > 1
    end

    next if factor > 1
    primes << i 
    nth += 1

    break if nth == 10001
  end
  puts "Found #{primes.size} primes."
  puts primes.last
end

def is_even number
  number%2 == 0
end

def can_factorize big_num, small_num
  big_num%small_num == 0
end

puts Benchmark.measure{go_prime}

