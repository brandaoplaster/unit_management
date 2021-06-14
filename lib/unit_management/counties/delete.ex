defmodule UnitManagement.Counties.Delete do
  alias UnitManagement.{County, Error, Repo}

  def call(id) do
    with %County{} = county <- Repo.get(County, id) do
      Repo.delete(county)
    else
      nil -> {:error, Error.build_state_not_found_error()}
    end
  end
end
