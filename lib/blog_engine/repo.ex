defmodule BlogEngine.Repo do
  use Ecto.Repo,
    otp_app: :blog_engine,
    adapter: Ecto.Adapters.Postgres
end
