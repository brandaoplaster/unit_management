defmodule UnitManagement.Counties.Update do
  alias UnitManagement.{County, Error, Repo}

  def call(%{"id" => id} = params) do
    with %County{} = county <- Repo.get(County, id) do
      do_update(county, params)
    else
      nil -> {:error, Error.build_county_not_found_error()}
    end
  end

  defp do_update(county, params) do
    county
    |> County.changeset(params)
    |> Repo.update()
    |> handle_update()
  end

  defp handle_update({:ok, %County{}} = county), do: county

  defp handle_update({:error, result}) do
    {:error, Error.build_not_update(result)}
  end
end
