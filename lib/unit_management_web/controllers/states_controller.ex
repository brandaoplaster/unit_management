defmodule UnitManagementWeb.StatesController do
  use UnitManagementWeb, :controller

  alias UnitManagement.State
  alias UnitManagementWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %State{} = state} <- UnitManagement.create_state(params) do
      conn
      |> put_status(:created)
      |> render("create.json", state: state)
    end
  end
end
