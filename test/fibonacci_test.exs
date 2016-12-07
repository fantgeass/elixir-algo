defmodule FibonacciTest do
  use ExUnit.Case

  test "Basic test" do
    assert Fibonacci.fib(1) == 1
    assert Fibonacci.fib(8) == 21
    assert Fibonacci.fib(100) == 354224848179261915075
  end

end
