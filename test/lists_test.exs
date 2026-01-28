defmodule ListsTest do
  use ExUnit.Case
  doctest Lists

  test "get_equipment_list returns the default list" do
    assert Lists.get_equipment_list() == ["space Helmet", "space suit", "space boots", "oxygen tank"]
  end

  test "get_first_item returns the first item of the list" do
    list = ["a", "b", "c"]
    assert Lists.get_first_item(list) == "a"
  end

  test "remove_first_item removes the first item of the list" do
    list = ["a", "b", "c"]
    assert Lists.remove_first_item(list) == ["b", "c"]
  end

  test "add_fast adds an item to the end of the list" do
    list = ["a", "b"]
    assert Lists.add_fast(list, "c") == ["a", "b", "c"]
  end

  test "add_slow adds an item to the end of the list" do
    list = ["a", "b"]
    assert Lists.add_slow(list, "c") == ["a", "b", "c"]
  end

  test "remove_item removes the item at the given index" do
    list = ["a", "b", "c"]
    assert Lists.remove_item(list, 1) == ["a", "c"]
  end

  test "equipment_count returns the number of items in the list" do
    list = ["a", "b", "c"]
    assert Lists.equipment_count(list) == 3
  end
end
