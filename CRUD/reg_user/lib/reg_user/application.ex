defmodule RegUser.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      RegUserWeb.Telemetry,
      RegUser.Repo,
      {DNSCluster, query: Application.get_env(:reg_user, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: RegUser.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: RegUser.Finch},
      # Start a worker by calling: RegUser.Worker.start_link(arg)
      # {RegUser.Worker, arg},
      # Start to serve requests, typically the last entry
      RegUserWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: RegUser.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    RegUserWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
