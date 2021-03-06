defmodule Mix.Tasks.Compile.Syscall do
  def run(_args) do
	pr = Mix.Project.build_path <> "/lib/syscall/priv"
    IO.puts "Compiling NIFs into syscall.so with priv=" <> pr
    :os.cmd(String.to_charlist("make PRIV=" <> pr))
    :ok
  end

  def clean() do
	pr = Mix.Project.build_path <> "/lib/syscall/priv"
    :os.cmd(String.to_charlist("make PRIV=" <> pr <> " clean"))
    :ok
  end
end

defmodule Syscall.MixProject do
  use Mix.Project

  def project do
    [
      app: :syscall,
      compilers: [:syscall] ++ Mix.compilers,
      version: "0.1.0",
      elixir: "~> 1.6",
      build_embedded: true,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
	  package: package()
    ]
  end

  defp package do
    [
      name: "syscall",
	  description: "low-level system call library for Elixir",
      files: ["lib", "Makefile", "generate_stubs.sh", "mix.exs", "c_src", "README*", "LICENSE*"],
      maintainers: ["Levente Kurusa"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/levex/elixir-syscall"}
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
