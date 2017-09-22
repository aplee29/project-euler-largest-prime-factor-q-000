def largest_prime_factor(input)
  prime = input
  (2..Math.sqrt(input).to_i).each do |i|
    # Initiates while loop to reduce prime value by i repeatedly, starting from 2
    # i increments by 1 until value is no longer evenly divisible
    while prime > i && prime % i == 0
      prime /= i
    end
  end
  prime
end
