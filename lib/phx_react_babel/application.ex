defmodule PhxReactBabel.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      PhxReactBabel.Repo,
      # Start the Telemetry supervisor
      PhxReactBabelWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: PhxReactBabel.PubSub},
      # Start the Endpoint (http/https)
      PhxReactBabelWeb.Endpoint
      # Start a worker by calling: PhxReactBabel.Worker.start_link(arg)
      # {PhxReactBabel.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PhxReactBabel.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    PhxReactBabelWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
