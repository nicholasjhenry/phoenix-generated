# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_generated,
  ecto_repos: [PhoenixGenerated.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :phoenix_generated, PhoenixGeneratedWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2vL0EAmhlBKcWIraWKKlKYOomU0hWZ2Jmd/h/gO+O/kbFmJ4Wi9BaJhFEmhWmYdL",
  render_errors: [view: PhoenixGeneratedWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: PhoenixGenerated.PubSub,
  live_view: [signing_salt: "4RGcoVUj"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
