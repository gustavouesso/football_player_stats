defmodule FootballPlayerStats.Roster.Position do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "positions" do
    field :name, :string
    field :sectorId, :binary_id

    timestamps()
  end

  @doc false
  def changeset(position, attrs) do
    position
    |> cast(attrs, [:name, :sectorId])
    |> validate_required([:name, :sectorId])
  end
end
