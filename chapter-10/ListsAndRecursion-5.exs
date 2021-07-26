defmodule MyList do
  def all?([]), do: true
  def all?([head | tail]) do
    if head do
      all?(tail)
    else
      false
    end
  end
  def all?([], _fun), do: true
  def all?([head | tail], fun) do
    if fun.(head) do
      all?(tail, fun)
    else
      false
    end
  end
  def each([], _fun), do: []
  def each([head | tail], fun) do
    [fun.(head) | each(tail, fun)]
  end
  def filter([], _fun), do: []
  def filter([head | tail], fun) do
    if fun.(head) do
      [head, filter(tail, fun)]
    else
      [filter(tail, fun)]
    end
  end
  def split([], _count), do: []
  def split([head | tail], count) do
    [head | split(tail, count-1)]
  end
end
