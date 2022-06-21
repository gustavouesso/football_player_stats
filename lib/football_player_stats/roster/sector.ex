defmodule FootballPlayerStats.Roster.Sector do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "sectors" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(sector, attrs) do
    sector
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
