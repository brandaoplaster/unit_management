defmodule UnitManagementWeb.CountiesController do
  use UnitManagementWeb, :controller

  alias UnitManagement.County
  alias UnitManagementWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %County{} = county} <- UnitManagement.create_county(params) do
      conn
      |> put_status(:created)
      |> render("create.json", county: county)
    end
  end
end
