defmodule UnitManagement.State do
  use Ecto.Schema

  import Ecto.Changeset

  @required_params [:name, :initials]

  schema "states" do
    field :name, :string
    field :initials, :string

    timestamps()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @required_params)
    |> validate_required(@required_params)
  end
end
