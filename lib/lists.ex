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
  # Performance note: This operation is faster because `++` only traverses
  # the first list and appends the item(s) at the end in a single pass.
  def add_fast(list, item) do
    list ++ [item]
  end

  # Adds an item to the end of the list in a slower way
  # Performance note: This is slower because it reverses the list twice.
  # Enum.reverse() traverses the entire list each time, so overall complexity is O(n)
  # whereas add_fast is usually more efficient for appending one item.
  def add_slow(list, item) do
    list
    |> Enum.reverse()
    |> then(&[item | &1])
    |> Enum.reverse()
  end

  # Removes an item at a specific index from the list
  # Performance note: List.delete_at/2 traverses the list up to the index,
  # so it’s O(n) in time complexity.
  def remove_item(list, index) do
    List.delete_at(list, index)
  end

  # Returns the number of items in the list
  # Performance note: length/1 traverses the entire list to count elements, O(n).
  def equipment_count(list) do
    length(list)
  end
end
