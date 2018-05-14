defmodule SyscallTest do
  use ExUnit.Case
  doctest Syscall

  test "greets the world" do
    assert Syscall.hello() == :world
  end
end
