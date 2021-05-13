defmodule PhxReactBabel.Repo do
  use Ecto.Repo,
    otp_app: :phx_react_babel,
    adapter: Ecto.Adapters.Postgres
end
