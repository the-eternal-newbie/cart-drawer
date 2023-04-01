defmodule CartDrawer.Repo do
  use Ecto.Repo,
    otp_app: :cart_drawer,
    adapter: Ecto.Adapters.Postgres
end
