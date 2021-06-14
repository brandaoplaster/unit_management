defmodule UnitManagementWeb.Router do
  use UnitManagementWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", UnitManagementWeb do
    pipe_through :api
    resources "states", StatesController, except: [:new, :edit]
    resources "counties", CountiesController, except: [:new, :edit]
  end

  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session, :protect_from_forgery]
      live_dashboard "/dashboard", metrics: UnitManagementWeb.Telemetry
    end
  end
end
