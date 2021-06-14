defmodule UnitManagement.Repo.Migrations.CreateCountiesTable do
  use Ecto.Migration

  def change do
    create table :counties do
      add :name, :string
      add :prefect, :string, null: true
      add :population, :float, null: true

      timestamps()
    end
  end
end
