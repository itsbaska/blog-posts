defmodule Rectangle do
  def area(%{length: length, width: width}) do
    length * width
  end

  def format(area) do
    [:red, area |> Integer.to_string] |> IO.ANSI.format
  end

  def print(area) do
    IO.puts area
  end
end