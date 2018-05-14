defmodule Syscall do
  # fast_compare.ex
  @on_load :load_nifs

  def load_nifs do
    :erlang.load_nif('./syscall', 0)
  end

  def make_raw_syscall(no, a0, a1, a2, a3, a4, a5, a6) do
    raise "NIF make_syscall/7 not implemented"
  end

  def stringify_term(len, str) do
    raise "NIF stringify_term/2 not implemented"
  end

  def get_errno() do
    raise "NIF get_errno/2 not implemented"
  end

  def test() do
    str = "Hello, World!\n\r"
    len = String.length str
    buf = stringify_term len, (String.to_char_list str)
    make_raw_syscall 1, 1, buf, len, 0, 0, 0, 0
    sys_exit_group(42)
  end

  def sys_exit_group(exit_code) do
    make_raw_syscall 231, exit_code, 0, 0, 0, 0, 0, 0
  end

  def sys_write(fd, buffer, len) do
    make_raw_syscall 1, fd, buffer, len, 0, 0, 0, 0
  end
end
