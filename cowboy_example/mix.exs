defmodule CowboyExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :cowboy_example,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {CowboyExample.Application, []}
    ]
  end

  defp deps do
    [
      {:cowboy, "~> 2.10"},
      {:finch, "~> 0.16", only: :test}
    ]
  end
end
