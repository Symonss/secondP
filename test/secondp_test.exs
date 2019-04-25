defmodule SecondpTest do
  use ExUnit.Case
  doctest Secondp

  test "greets the world" do
    assert Secondp.hello() == :world
  end
end
