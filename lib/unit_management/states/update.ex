defmodule UnitManagement.States.Update do
  alias UnitManagement.{Error, Repo, State}

  def call(%{"id" => id} = params) do
    with %State{} = state <- Repo.get(State, id) do
      do_update(state, params)
    else
      nil -> {:error, Error.build_state_not_found_error()}
    end
  end

  defp do_update(state, params) do
    state
    |> State.changeset(params)
    |> Repo.update()
    |> handle_update()
  end

  defp handle_update({:ok, %State{}} = state), do: state

  defp handle_update({:error, result}) do
    {:error, Error.build_state_not_update(result)}
  end
end
