defmodule MyString do
  def string_is_printable([head | tail]) do
    [is_printable(head) | string_is_printable(tail)]
  end
  def is_printable(char) do
    confirm = if ?char >= 32 && ?char <= 126 do
      true
    else
      false
    end
  end
end
