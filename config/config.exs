# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :blog_engine,
  ecto_repos: [BlogEngine.Repo]

# Configures the endpoint
config :blog_engine, BlogEngineWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "762NNDK0B0/tVunEUcvcJ+jSgXBhfae/tMVvc7ho+eaaYNi6CTfPrHFAeyy/hf5B",
  render_errors: [view: BlogEngineWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: BlogEngine.PubSub,
  live_view: [signing_salt: "ZrpV0IqQ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
