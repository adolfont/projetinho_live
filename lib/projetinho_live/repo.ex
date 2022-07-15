defmodule ProjetinhoLive.Repo do
  use Ecto.Repo,
    otp_app: :projetinho_live,
    adapter: Ecto.Adapters.Postgres
end
