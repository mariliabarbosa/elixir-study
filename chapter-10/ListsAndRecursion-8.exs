defmodule MyList do
  def total(order = [id: _, ship_to: state, net_amount: net], taxes) do
    state_tax = Keyword.get(taxes, state)

    total_tax = if state_tax === nil do
      net
    else
      net + state_tax
    end

    updated_order = Keyword.put_new(order, :total_amount, total_tax)
    IO.inspect updated_order
  end

  def total_all(orders, taxes) do
    orders |> Enum.each(&total(&1, taxes))
  end
end
