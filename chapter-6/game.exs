"""
I’m thinking of a number between 1 and 1000.…
The most efficient way to find the number is to guess halfway between
the low and high numbers of the range. If our guess is too big, then the
answer lies between the bottom of the range and one less than our guess.
If our guess is too small, then the answer lies between one more than our
guess and the end of the range.
Your API will be guess(actual, range), where range is an Elixir range. Your
output should look similar to this:
iex> Chop.guess(273, 1..1000)
Is it 500
Is it 250
Is it 375
Is it 312
Is it 281
Is it 265
Is it 273
273

Hints:
– You may need to implement helper functions with an additional
parameter (the currently guessed number).
– The div(a,b) function performs integer division.
– Guard clauses are your friends.
– Patterns can match the low and high parts of a range (a..b=4..8).
"""

defmodule GuessGame do
  def guess(num, range = min..max) do
    guess = div(min+max, 2)
    IO.puts "eh #{guess}?"
    analyze(num, guess, range)
  end
  def analyze(num, num, _), do: IO.puts "eh #{num} sim"
  def analyze(num, guess, _..max) when guess < num, do: guess(num, guess+1..max)
  def analyze(num, guess, min.._) when guess > num, do: guess(num, min..guess-1)
end
