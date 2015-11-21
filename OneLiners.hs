-- Fibonacci sequence
fibs = 0:1:(zipWith (+) fibs (tail fibs))

-- Prime numbers
primes = sieve [2..] where
         sieve (p:xs) = p:(sieve [n | n <- xs, n `mod` p > 0])
