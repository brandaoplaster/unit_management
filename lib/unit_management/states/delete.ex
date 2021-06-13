defmodule UnitManagement.States.Delete do
  alias UnitManagement.{Error, Repo, State}

  def call(id) do
    with %State{} = state <- Repo.get(State, id) do
      Repo.delete(state)
    else
      nil -> {:error, Error.build_state_not_found_error()}
    end
  end
end
