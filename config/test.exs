import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :cart_drawer, CartDrawer.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "cart_drawer_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :cart_drawer, CartDrawerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "kZijICgskfRRCKGCLhYYpUUBSEJeVzdFsgJMwH8KyHjmTDN7mecRJT9o2paWZpgz",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
