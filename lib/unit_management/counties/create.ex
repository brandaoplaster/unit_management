defmodule UnitManagement.Counties.Create do
  alias UnitManagement.{County, Error, Repo}

  def call(params) do
    params
    |> County.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  def handle_insert({:ok, %County{}} = county), do: county

  def handle_insert({:error, result}) do
    {:error, Error.build(:bad_request, result)}
  end
end
