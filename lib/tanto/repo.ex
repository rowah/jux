defmodule Tanto.Repo do
  use Ecto.Repo,
    otp_app: :tanto,
    adapter: Ecto.Adapters.Postgres
end
