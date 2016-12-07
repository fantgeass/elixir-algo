# Given an list of integers and a value, determine if there are any two integers in the list which sum equal to the given value.
defmodule SumOfTwoValues do
  def sum([head | tail], value) do
    _sum(tail, value, MapSet.new([head]))
  end

  defp _sum([], _, _) do
    false
  end

  defp _sum([head | tail], value, set) do
    if MapSet.member?(set, value - head) do
      true
    else
      _sum(tail, value, MapSet.put(set, head))
    end
  end
end