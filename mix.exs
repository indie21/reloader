defmodule Reloader.Mixfile do
  use Mix.Project

  def project do
    [app: :reloader,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger],
     mod: {Reloader, []}]
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
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end

  defp description do
    """
    auto load the changed beam in development
    """
  end

  defp package do
    [# These are the default files included in the package
      name: :reloader,
      files: ["lib", "src", "mix.exs", "README*"],
      maintainers: ["zhuoyikang"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/indie21/reloader"}
    ]
  end

end
