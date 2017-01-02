defmodule Algorithmia do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    # Define workers and child supervisors to be supervised
    children = [
      # Starts a worker by calling: Algorithmia.Worker.start_link(arg1, arg2, arg3)
      # worker(Algorithmia.Worker, [arg1, arg2, arg3]),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Algorithmia.Supervisor]
    Supervisor.start_link(children, opts)
  end


  @doc """
    Generic algorithm runner, just provide algo name and expected data.

  """
  def run_algo(name, data) do
    body = Poison.encode! data
    Algorithmia.Common.request(name, body)
  end

end
