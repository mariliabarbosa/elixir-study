defmodule MyString do
  def center(list) do
    sorted = Enum.sort(list, &(String.length(&1) < String.length(&2)))
    String.length(List.last(sorted))
    |> center_strings(sorted)
    |> Enum.map(fn string -> IO.puts(string) end)
  end
  def center_strings(full_length, [head | tail]) do
    size = div(full_length - String.length(head), 2) + String.length(head)
    if tail != [] do
      [String.pad_leading(head, size) | center_strings(full_length, tail)]
    else
      [String.pad_leading(head, size)]
    end
  end
end
