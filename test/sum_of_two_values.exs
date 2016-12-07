defmodule SumOfTwoValuesTest do
  use ExUnit.Case

  test "Basic test" do
    assert SumOfTwoValues.sum([10,3,5,7,9], 19)
  end

  test "Fail test" do
    refute SumOfTwoValues.sum([10,3,5,7,9], 18)
  end
end
