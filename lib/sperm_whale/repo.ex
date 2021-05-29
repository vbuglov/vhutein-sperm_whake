defmodule SpermWhale.Repo do
  use Ecto.Repo,
    otp_app: :sperm_whale,
    adapter: Ecto.Adapters.Postgres
end
