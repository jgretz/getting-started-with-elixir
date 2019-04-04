defmodule Sample.Utils do
  def square(num), do: num * num

  def add(a, b), do: a + b

  def invoke(a, f) do
    f.(a)
  end
end
