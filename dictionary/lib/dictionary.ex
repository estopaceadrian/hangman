defmodule Dictionary do
  @word_list "assets/words.txt"
             |> File.read!()
             |> String.split(~r/\n/, trim: true)

  def random_word do
    @word_list
    |> Enum.random()
  end

  def to_snake_case(input) do
    transformed_string =
      input
      |> String.downcase()
      |> String.replace(~r/\s+/, "_")

    {:ok, transformed_string}
  end

  def to_integer(input, _base) do
    transformed_string =
      input
      |> String.to_integer(_base)
  end
end
