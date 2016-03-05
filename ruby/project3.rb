# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

# Function to find a prime
def prime(number)
    # Find the max number we need to divide by
    max = Math.sqrt(number).ceil
    # Need to start from 2 instead of 0 or 1
    2.upto(max) do |x|
        # if it it divisible, return false/isn't a prime
        if number % x == 0
            return false
        end
    end
    # Got through the loop, not divisible, therefore prime
    return true
end

value = 13195
primes = []

# Iterate starting from 2
2.upto(value) do |i|
    # Find if the number is a factor
    if value % i == 0
        if prime(i)
            # add it to the array of prime factors
            primes.push i
        end
    end
end
# Get the greatest prime factor
puts primes[-1]