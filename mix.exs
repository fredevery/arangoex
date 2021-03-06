defmodule Arangoex.Mixfile do
  use Mix.Project

  def project do
    [app: :arangoex,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),

     # Docs
     # name: "MyApp",
     source_url: "https://github.com/ijcd/arangoex",
     # homepage_url: "http://YOUR_PROJECT_HOMEPAGE",
     # docs: [main: "MyApp", # The main page in the docs
     #        logo: "path/to/logo.png",
     #        extras: ["README.md"]]]     
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison, :poison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:httpoison, "> 0.0.0"},
      {:poison, "> 0.0.0"},
      {:exconstructor, "~> 1.0.2"},
      {:faker, "> 0.0.0", only: :test},
      {:mix_test_watch, "~> 0.2", only: :dev},
      {:credo, "~> 0.4", only: [:dev, :test]},
      {:dialyxir, "~> 0.4", only: [:dev, :test]},
      {:ex_doc, "~> 0.14", only: :dev, runtime: false},
    ]
  end
end
