defmodule Lists do
  # Returns a default list of space equipment
  def get_equipment_list() do
    ["space Helmet", "space suit", "space boots", "oxygen tank"]
  end

  # Returns the first item in a list
  def get_first_item(list) do
    hd(list)
  end

  # Removes the first item from a list and returns the rest
  def remove_first_item(list) do
    tl(list)
  end

  # Adds an item to the end of the list efficiently
  def add_fast(list, item) do
    list ++ [item]
  end

  # Adds an item to the end of the list in a slower, more verbose way
  # by reversing the list, prepending the item, and reversing again
  def add_slow(list, item) do
    list
    |> Enum.reverse()
    |> then(&[item | &1])
    |> Enum.reverse()
  end

  # Removes an item at a specific index from the list
  def remove_item(list, index) do
    List.delete_at(list, index)
  end

  # Returns the number of items in the list
  def equipment_count(list) do
    length(list)
  end
end
