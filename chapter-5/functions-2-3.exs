fizzbuzz = fn
  [0, 0, n] -> IO.puts "FizzBuzz,\n"
  [0, _, n] -> IO.puts "Fizz,\n"
  [_, 0, n] -> IO.puts "Buzz,\n"
  [_, _, n] -> IO.puts "#{n}\n"
end

n = 10
fizzbuzz.([rem(n,3), rem(n,5), n])
n = 11
fizzbuzz.([rem(n,3), rem(n,5), n])
n = 12
fizzbuzz.([rem(n,3), rem(n,5), n])
n = 13
fizzbuzz.([rem(n,3), rem(n,5), n])
n = 14
fizzbuzz.([rem(n,3), rem(n,5), n])
n = 15
fizzbuzz.([rem(n,3), rem(n,5), n])
n = 16
fizzbuzz.([rem(n,3), rem(n,5), n])
