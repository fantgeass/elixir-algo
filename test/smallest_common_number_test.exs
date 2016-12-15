defmodule SmallestCommonNumberTest do
  use ExUnit.Case

  test "Basic test" do
    a = [2, 4, 9, 11, 20]
    b = [-4, 3, 11, 12]
    c = [-1, 2, 3, 4, 11, 55, 453]
    assert SmallestCommonNumber.find(a, b, c) == 11
  end
end
