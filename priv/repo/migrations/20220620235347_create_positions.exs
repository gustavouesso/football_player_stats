defmodule FootballPlayerStats.Repo.Migrations.CreatePositions do
  use Ecto.Migration

  def change do
    create table(:positions, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :sectorId, references(:sectors, on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create index(:positions, [:sectorId])
  end
end
