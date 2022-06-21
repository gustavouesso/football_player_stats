defmodule FootballPlayerStats.Repo.Migrations.CreatePlayers do
  use Ecto.Migration

  def change do
    create table(:players, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :height, :decimal
      add :weight, :decimal

      timestamps()
    end

  end
end
