defmodule Tanto.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(Tanto.Repo, [])
      # Starts a worker by calling: Tanto.Worker.start_link(arg)
      # {Tanto.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Tanto.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
