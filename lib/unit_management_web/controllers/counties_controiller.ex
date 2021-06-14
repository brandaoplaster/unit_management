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

  def index(conn, _params) do
    counties = UnitManagement.get_all_counties()

    conn
    |> put_status(:ok)
    |> render("index.json", counties: counties)
  end

  def show(conn, %{"id" => id}) do
    with {:ok, %County{} = county} <- UnitManagement.get_county(id) do
      conn
      |> put_status(:ok)
      |> render("county.json", county: county)
    end
  end

  def update(conn, params) do
    with {:ok, %County{} = county} <- UnitManagement.update_county(params) do
      conn
      |> put_status(:ok)
      |> render("county.json", county: county)
    end
  end

  def delete(conn, %{"id" => id}) do
    with {:ok, %County{}} <- UnitManagement.delete_county(id) do
      conn
      |> put_status(:no_content)
      |> text("")
    end
  end
end
