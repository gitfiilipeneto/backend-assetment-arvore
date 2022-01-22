import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :schools_api, SchoolsApi.Repo,
  username: "root",
  password: "",
  hostname: "localhost",
  database: "schools_api_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :schools_api, SchoolsApiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "uBQDilVONodtakEGMFvs0/k7CLE2KmjYuo22Uq6vvrvnx/rQhv2w58jrOJme4lAR",
  server: false

# In test we don't send emails.
config :schools_api, SchoolsApi.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
