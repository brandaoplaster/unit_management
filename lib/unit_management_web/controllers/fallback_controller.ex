defmodule UnitManagementWeb.FallbackController do
  use UnitManagementWeb, :controller

  alias UnitManagement.Error
  alias UnitManagementWeb.ErrorView

  def call(conn, {:error, %Error{status: status, message: message}}) do
    conn
    |> put_status(status)
    |> put_view(ErrorView)
    |> render("error.json", message: message)
  end
end
