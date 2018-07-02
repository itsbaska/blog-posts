defmodule RectangleTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  doctest Rectangle

  describe ".area" do
    test "calculates area" do
      assert Rectangle.area(%{length: 3, width: 4}) == 12
    end

    test "formats area" do
      assert Rectangle.format(12) == [[[[] | "\e[31m"], "12"] | "\e[0m"]
    end

    test "prints area" do
      assert capture_io(fn -> Rectangle.print(12) end) == "12\n"
    end
  end
end
