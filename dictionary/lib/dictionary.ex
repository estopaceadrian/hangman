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

    {:ok, transformed_string}
  end

  def func1({a, b}) do
    IO.puts("a = #{a}, b = #{b}")
  end

  def func2(t = {a, b}) do
    IO.puts("a = #{a}, b = #{b}, is_tuple{t}")
  end

  def read_file({:ok, file}) do
    file
    |> IO.read(:line)
  end

  def read_file({:error, reason}) do
    Logger.error("File error: #{reason}")
    []
  end

  def get_string do
    IO.puts("What is your name?")
    name = get_name()
    IO.puts("Hello  #{name}!")
  end

  defp get_name do
    name = String.trim(IO.gets("Name: "))

    if String.length(name) == 0 do
      IO.puts("Name cannot be empty. Please enter your name.")
      get_name()
    else
      name
    end
  end
end
