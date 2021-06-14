defmodule UnitManagementWeb.CountiesView do
  use UnitManagementWeb, :view

  alias UnitManagement.County

  def render("index.json", %{counties: counties}) do
    %{counties: Enum.map(counties, &county_json/1)}
  end

  def render("create.json", %{
        county: %County{
          id: id,
          name: name,
          prefect: prefect,
          population: population
        }
      }) do
    %{
      county: %{
        id: id,
        name: name,
        prefect: prefect,
        population: population
      }
    }
  end

  def render("county.json", %{
        county: %County{
          id: id,
          name: name,
          prefect: prefect,
          population: population
        }
      }) do
    %{
      county: %{
        id: id,
        name: name,
        prefect: prefect,
        population: population
      }
    }
  end

  defp county_json(county) do
    %{
      county: %{
        id: county.id,
        name: county.name,
        prefect: county.prefect,
        population: county.population
      }
    }
  end
end
