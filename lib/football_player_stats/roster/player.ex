defmodule FootballPlayerStats.Roster.Player do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "players" do
    field :height, :decimal
    field :name, :string
    field :weight, :decimal

    timestamps()
  end

  @doc false
  def changeset(player, attrs) do
    player
    |> cast(attrs, [:name, :height, :weight])
    |> validate_required([:name, :height, :weight])
  end
end
