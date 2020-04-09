use Mix.Config

config :example_app, ExampleApp.Repo,
  username: "postgres",
  password: "postgres",
  database: "ExampleAppDB",
  hostname: "localhost",
  port: "5432",
  virtual_host: "/",
  show_sensitive_data_on_connection_error: false,
  pool_size: 10
