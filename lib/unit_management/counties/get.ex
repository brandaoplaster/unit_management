defmodule UnitManagement.Counties.Get do
  alias UnitManagement.{County, Error, Repo}

  def get_by_id(id) do
    with %County{} = county <- Repo.get(County, id) do
      {:ok, county}
    else
      nil -> {:error, Error.build_state_not_found_error()}
    end
  end

  def get_all() do
    Repo.all(County)
  end
end
