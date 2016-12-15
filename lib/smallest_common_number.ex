# Given three integer arrays sorted in ascending order,
# find the smallest number that is common in all three arrays.
defmodule SmallestCommonNumber do
  def find(a, b, c) do
    cond do
      hd(a) == hd(b) && hd(b) == hd(c) ->
        hd(a)
      hd(a) <= hd(b) && hd(a) <= hd(c) ->
        find(tl(a), b, c)
      hd(b) <= hd(a) && hd(b) <= hd(c) ->
        find(a, tl(b), c)
      hd(c) <= hd(b) && hd(c) <= hd(a) ->
        find(a, b, tl(c))
      true ->
        false
    end
  end
end
