defmodule UnitManagementWeb.CountiesView do
  use UnitManagementWeb, :view

  alias UnitManagement.County

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
end
