defmodule ElixirListsTest do
  use ExUnit.Case
  doctest ElixirLists

  test "greets the world" do
    assert ElixirLists.hello() == :world
  end
end
