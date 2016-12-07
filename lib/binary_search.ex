# Given a sorted array of integers, return the index of the given key. Return nil if not found.
defmodule BinarySearch do
  def search(tuple, value) do
    _search(tuple, value, 0, tuple_size(tuple)-1)
  end

  defp _search(_, _, low_index, high_index) when low_index > high_index do
    nil
  end

  defp _search(tuple, value, low_index, high_index) do
    mid_index =  low_index + div(high_index - low_index, 2)
    mid_value = tuple |> elem(mid_index)

    cond do
      mid_value == value -> mid_index
      mid_value > value -> _search(tuple, value, low_index, mid_index-1)
      mid_value < value -> _search(tuple, value, mid_index+1, high_index)
    end
  end
end