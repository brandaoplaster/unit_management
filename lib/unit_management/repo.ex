defmodule UnitManagement.Repo do
  use Ecto.Repo,
    otp_app: :unit_management,
    adapter: Ecto.Adapters.MyXQL
end
