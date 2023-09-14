defmodule KalangoBot.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: KalangoBot.Worker.start_link(arg)
      # {KalangoBot.Worker, arg}
      KalangoBot
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: KalangoBot.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
