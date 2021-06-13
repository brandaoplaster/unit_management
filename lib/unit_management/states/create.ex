defmodule UnitManagement.States.Create do
  alias UnitManagement.{Error, Repo, State}

  def call(params) do
    params
    |> State.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  def handle_insert({:ok, %State{}} = result), do: result

  def handle_insert({:error, result}) do
    {:error, Error.build(:bad_request, result)}
  end
end
