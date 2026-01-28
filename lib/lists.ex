defmodule Lists do

  def get_equipment_list() do
    ["space Helmet", "space suit", "space boots", "oxygen tank"]
  end

  def get_first_item(list) do
    hd(list)
  end

  def remove_first_item(list) do
    tl(list)
  end

  def add_fast(list, item) do
    list ++ [item]
  end


  def add_slow(list, item) do
    list
    |>Enum.reverse()
    |>then(&[item | &1])
    |>Enum.reverse()
  end

  def remove_item(item,index) do
    List.delete_at(item,index)
  end

  def equipment_count(list) do
    length(list)
  end
end
