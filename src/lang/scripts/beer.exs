defmodule Beer do
  def sentence(1) do
    "1 bottle of beer on the wall, 1 bottle of beer. You take one down, pass it around, no more bottles of beer on the wall!"
  end

  def sentence(2) do
    "2 bottles of beer on the wall, 2 bottles of beer. You take one down, pass it around, 1 bottle of beer on the wall!"
  end

  def sentence(bottles) do
    "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer. You take one down, pass it around,
    #{bottles - 1} bottles of beer on the wall!"
  end

  def lyrics(bottles) when bottles <= 1 do
    IO.puts(sentence(bottles))
  end

  def lyrics(bottles) do
    IO.puts(sentence(bottles))

    lyrics(bottles - 1)
  end
end
