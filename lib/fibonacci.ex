defmodule Fibonacci do
  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n), do: _fib(n, 0, 1, 2)
  
  defp _fib(n, r1, r2, current_n) do
    r3 = r1 + r2
    if n == current_n, do: r3, else: _fib(n, r2, r3, current_n+1)
  end
end
