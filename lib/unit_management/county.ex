defmodule UnitManagement.County do
  use Ecto.Schema

  import Ecto.Changeset

  @required_params [:name]
  @optional [:prefect, :population]

  schema "counties" do
    field :name, :string
    field :prefect, :string
    field :population, :float

    timestamps()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @required_params ++ @optional)
    |> validate_required(@required_params)
  end
end
