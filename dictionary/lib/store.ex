defmodule Store do
  def calculate_discount do
    price = IO.gets("Regular Price: ") |> String.trim()
    discount_rate = IO.gets("Discount Rate: ") |> String.trim()
    sales_price = discount(price, discount_rate)
    IO.puts("Sales Price: #{sales_price}")
  end

  def discount(price, discount_rate)
      when is_integer(price) and is_float(discount_rate),
      do: price * (1 - discount_rate)

  def discount(price, discount_rate)
      when is_binary(price) and is_binary(discount_rate) do
    # case Integer.parse(price) do
    #   {price, _} -> price * 0.85
    #   _ -> 0
    # end
    with {int_price, _} <- Integer.parse(price),
         {float_discount_rate, _} <- Float.parse(discount_rate) do
      discount(int_price, float_discount_rate)
    else
      _ -> 0
    end
  end

  def discount(_price, _discount_rate), do: 0
end
