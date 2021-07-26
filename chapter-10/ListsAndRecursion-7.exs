defmodule MyList do
  def span(from, to) when from > to, do: []
  def span(from, to) do
    [from | span(from+1, to)]
  end
  def primes_span(n) do
    range = span(2, n)
    range -- (for a <- range, b <- range, a <= b, do: a*b)
  end
end

#i took this from the book but for some reason it doesn't run? lol
