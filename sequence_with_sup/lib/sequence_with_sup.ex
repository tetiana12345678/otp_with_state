defmodule SequenceWithSup do
  use Application

   # See http://elixir-lang.org/docs/stable/elixir/Application.html
   # for more information on OTP Applications
  def start(_type, _args) do
    {:ok, _pid} = SequenceWithSup.Supervisor.start_link(Application.get_env(:sequence_with_sup, :initial_number))
  end
end
