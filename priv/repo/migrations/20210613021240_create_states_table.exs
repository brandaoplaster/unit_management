defmodule UnitManagement.Repo.Migrations.CreateStatesTable do
  use Ecto.Migration

  def change do
    create table :states do
      add :name, :string
      add :initials, :string

      timestamps()
    end
  end
end
