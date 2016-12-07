defmodule BinarySearchTest do
  use ExUnit.Case

  setup_all do
    tuple = 1..1000 |> Enum.to_list |> List.to_tuple

    [tuple: tuple]
  end

  test "Given a sorted array of integers, return the index of the given value", context do
    assert BinarySearch.search(context[:tuple], 123) == 122
    assert BinarySearch.search(context[:tuple], 784) == 783
  end

  test "Return nil if not found", context do
    assert BinarySearch.search(context[:tuple], 1200) == nil
  end
end
