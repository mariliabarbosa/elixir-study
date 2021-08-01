defmodule MyString do
  def is_printable(string) do
    Enum.all?(string, fn char -> if char >= 32 && char <= 126, do: true, else: false end)
  end
end

IO.inspect(MyString.is_printable('Марилиа'))
