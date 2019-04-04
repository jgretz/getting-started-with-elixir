defmodule Sample.Calendar do
  def is_leap_year(year) when rem(year, 400) === 0, do: true
  def is_leap_year(year) when rem(year, 100) === 0, do: false
  def is_leap_year(year) when rem(year, 4) === 0, do: true
  def is_leap_year(_), do: false

  def day_abbreviation(day) do
    cond do
      day == :Monday -> "M"
      day == :Tuesday -> "Tu"
      day == :Wednesday -> "W"
      day == :Thursday -> "Th"
      day == :Friday -> "F"
      day == :Saturday -> "Sa"
      day == :Sunday -> "Su"
      true -> "Invalid Day"
    end
  end

  def describe_date(date) do
    case date do
      {1, _, _} ->
        "Payday"

      {25, 12, _} ->
        "Merry Christmas"

      {25, month, _} when month <= 12 ->
        "Only #{12 - month} months to go unil Christmas"

      {31, 10, 1517} ->
        "Luther is knocking"

      {31, 10, _} ->
        "Happy Halloween"

      {day, month, _} when day <= 31 and day >= 1 and month <= 12 and month >= 1 ->
        "Just Another Day"

      {_, _, _} ->
        "Invalid Date"
    end
  end
end
