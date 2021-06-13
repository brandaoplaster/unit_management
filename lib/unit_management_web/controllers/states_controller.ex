defmodule UnitManagementWeb.StatesController do
  use UnitManagementWeb, :controller

  alias UnitManagement.State
  alias UnitManagementWeb.FallbackController

  action_fallback FallbackController

  def index(conn, _params) do
    # with {:ok, %State{} = states} <- UnitManagement.get_all_state do
      states = UnitManagement.get_all_state
      states |> IO.inspect()
      conn
      |> put_status(:ok)
      |> render("index.json", states: states)
    # end
  end

  def create(conn, params) do
    with {:ok, %State{} = state} <- UnitManagement.create_state(params) do
      conn
      |> put_status(:created)
      |> render("create.json", state: state)
    end
  end

  def show(conn, %{"id" => id}) do
    with {:ok, %State{} = state} <- UnitManagement.get_state(id) do
      conn
      |> put_status(:ok)
      |> render("state.json", state: state)
    end
  end

  def update(conn, params) do
    with {:ok, %State{} = state} <- UnitManagement.update_state(params) do
      conn
      |> put_status(:ok)
      |> render("state.json", state: state)
    end
  end
end
