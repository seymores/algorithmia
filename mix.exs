defmodule Algorithmia.Mixfile do
  use Mix.Project

  def project do
    [app: :algorithmia,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger, :httpoison],
     mod: {Algorithmia, []}]
  end

  defp deps do
    [ {:poison, "~> 3.0", override: true},
      {:httpoison, "~> 0.10.0"}]
  end
end
