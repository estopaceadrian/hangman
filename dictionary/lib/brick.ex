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
end
