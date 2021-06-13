defmodule UnitManagement.States.Get do
  alias UnitManagement.{Error, Repo, State}

  def get_by_id(id) do
    with %State{} = state <- Repo.get(State, id) do
      {:ok, state}
    else
      nil -> {:error, Error.build_state_not_found_error()}
    end
  end
end
