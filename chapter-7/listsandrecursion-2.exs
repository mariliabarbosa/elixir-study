defmodule MaxElement do
  def max([x]), do: x
  def max([head | tail]) do
    max(head, max(tail))
  end
end
