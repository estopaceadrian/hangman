defmodule Helpers do
  # [] = 0
  # [1, 3, 5] = 3

  def len([]), do: 0
  def len([_h | t]), do: 1 + len(t)

  # [] = 0
  # [1, 3, 5] = 3

  def sum([]), do: 0
  def sum([h | t]), do: h + sum(t)
end
