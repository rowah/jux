use Mix.Config

config :tanto, Tanto.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "tanto_repo",
  username: "jrowah",
  password: "pass",
  hostname: "localhost"

config :tanto,
  ecto_repos: [Tanto.Repo]
