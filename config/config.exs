# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :football_player_stats,
  ecto_repos: [FootballPlayerStats.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :football_player_stats, FootballPlayerStatsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1HoFsJUM4IOCCwaZSOs/carm2T/EElX+gWBJcD9aS4VV4If99ziwCBg4w2DDWmJv",
  render_errors: [view: FootballPlayerStatsWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: FootballPlayerStats.PubSub,
  live_view: [signing_salt: "b5+zAYOT"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
