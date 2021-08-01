defmodule MyString do
  def calculate(string) do
    separate = Enum.chunk_by(string, &(&1 in ' '))
    [first,_,operator,_,second] = separate
    _calculate(first, operator, second)
  end
  defp _calculate(first, operator, second) do
    num1 = List.to_integer(first)
    num2 = List.to_integer(second)

    case operator do
      '+' -> num1 + num2
      '-' -> num1 - num2
      '*' -> num1 * num2
      '/' -> num1 / num2
    end
  end
end
