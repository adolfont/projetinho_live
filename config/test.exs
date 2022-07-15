import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :projetinho_live, ProjetinhoLive.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "projetinho_live_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :projetinho_live, ProjetinhoLiveWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "HLCz5TJMCSVDHJfS0Ti3RJ1wrihKOzGR66fJZ9vnUK0cziLYOQWnHLX1lloa46R5",
  server: false

# In test we don't send emails.
config :projetinho_live, ProjetinhoLive.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
