class LargestPrimeFactor
  attr_reader :number

  def initialize(input)
    @number = largest_prime_factor(input)
  end

  def largest_prime_factor(input)
    prime = input
    (2..Math.sqrt(input).to_i).each do |i|
      while prime > i && prime % i == 0
        prime /= i
      end
    end
    prime
  end
end
