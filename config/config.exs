# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :unit_management,
  ecto_repos: [UnitManagement.Repo]

# Configures the endpoint
config :unit_management, UnitManagementWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5OW1BaqNl5W7wnS4RYFN9AeZpYBJq5UTKeOvkAsLZtxKNc+SVu906UGi5f98RsOz",
  render_errors: [view: UnitManagementWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: UnitManagement.PubSub,
  live_view: [signing_salt: "jFuwe5pY"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
