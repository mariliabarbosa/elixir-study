defmodule MyList do
  def caesar([], _n), do: []
  def caesar([head | tail], n) when head+n <= ?z do
    [head+n | caesar(tail, n)]
  end
  def caesar([head | tail], n) when head+n > ?z do
    sum = head+n
    [sum - 26 | caesar(tail, n)]
  end
end
