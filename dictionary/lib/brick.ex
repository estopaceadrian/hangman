defmodule Brick do
  defstruct color: "red", size: "standard"

  def create(color, size) do
    %Brick{color: color, size: size}
  end

  def get_color(brick) do
    brick.color
  end

  def get_size(brick) do
    brick.size
  end

  def print_pyramid(n) when is_integer(n) and n > 0 do
    for i <- 1..n do
      spaces = String.duplicate(" ", n - i)
      stars = String.duplicate("*", 2 * i - 1)
      IO.puts("#{spaces}#{stars}")
    end
  end
end
