fizzbuzz = fn
  [0, 0, n] -> IO.puts "FizzBuzz,\n"
  [0, _, n] -> IO.puts "Fizz,\n"
  [_, 0, n] -> IO.puts "Buzz,\n"
  [_, _, n] -> IO.puts "#{n}\n"
end

fb = fn n -> fizzbuzz.([rem(n,3), rem(n,5), n]) end

fb.(10)
fb.(11)
fb.(12)
fb.(13)
fb.(14)
fb.(15)
fb.(16)
