defmodule FootballPlayerStats.Roster do
  @moduledoc """
  The Roster context.
  """

  import Ecto.Query, warn: false
  alias FootballPlayerStats.Repo

  alias FootballPlayerStats.Roster.Sector

  @doc """
  Returns the list of sectors.

  ## Examples

      iex> list_sectors()
      [%Sector{}, ...]

  """
  def list_sectors do
    Repo.all(Sector)
  end

  @doc """
  Gets a single sector.

  Raises `Ecto.NoResultsError` if the Sector does not exist.

  ## Examples

      iex> get_sector!(123)
      %Sector{}

      iex> get_sector!(456)
      ** (Ecto.NoResultsError)

  """
  def get_sector!(id), do: Repo.get!(Sector, id)

  @doc """
  Creates a sector.

  ## Examples

      iex> create_sector(%{field: value})
      {:ok, %Sector{}}

      iex> create_sector(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_sector(attrs \\ %{}) do
    %Sector{}
    |> Sector.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a sector.

  ## Examples

      iex> update_sector(sector, %{field: new_value})
      {:ok, %Sector{}}

      iex> update_sector(sector, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_sector(%Sector{} = sector, attrs) do
    sector
    |> Sector.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a sector.

  ## Examples

      iex> delete_sector(sector)
      {:ok, %Sector{}}

      iex> delete_sector(sector)
      {:error, %Ecto.Changeset{}}

  """
  def delete_sector(%Sector{} = sector) do
    Repo.delete(sector)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking sector changes.

  ## Examples

      iex> change_sector(sector)
      %Ecto.Changeset{data: %Sector{}}

  """
  def change_sector(%Sector{} = sector, attrs \\ %{}) do
    Sector.changeset(sector, attrs)
  end

  alias FootballPlayerStats.Roster.Position

  @doc """
  Returns the list of positions.

  ## Examples

      iex> list_positions()
      [%Position{}, ...]

  """
  def list_positions do
    Repo.all(Position)
  end

  @doc """
  Gets a single position.

  Raises `Ecto.NoResultsError` if the Position does not exist.

  ## Examples

      iex> get_position!(123)
      %Position{}

      iex> get_position!(456)
      ** (Ecto.NoResultsError)

  """
  def get_position!(id), do: Repo.get!(Position, id)

  @doc """
  Creates a position.

  ## Examples

      iex> create_position(%{field: value})
      {:ok, %Position{}}

      iex> create_position(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_position(attrs \\ %{}) do
    %Position{}
    |> Position.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a position.

  ## Examples

      iex> update_position(position, %{field: new_value})
      {:ok, %Position{}}

      iex> update_position(position, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_position(%Position{} = position, attrs) do
    position
    |> Position.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a position.

  ## Examples

      iex> delete_position(position)
      {:ok, %Position{}}

      iex> delete_position(position)
      {:error, %Ecto.Changeset{}}

  """
  def delete_position(%Position{} = position) do
    Repo.delete(position)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking position changes.

  ## Examples

      iex> change_position(position)
      %Ecto.Changeset{data: %Position{}}

  """
  def change_position(%Position{} = position, attrs \\ %{}) do
    Position.changeset(position, attrs)
  end

  alias FootballPlayerStats.Roster.Player

  @doc """
  Returns the list of players.

  ## Examples

      iex> list_players()
      [%Player{}, ...]

  """
  def list_players do
    Repo.all(Player)
  end

  @doc """
  Gets a single player.

  Raises `Ecto.NoResultsError` if the Player does not exist.

  ## Examples

      iex> get_player!(123)
      %Player{}

      iex> get_player!(456)
      ** (Ecto.NoResultsError)

  """
  def get_player!(id), do: Repo.get!(Player, id)

  @doc """
  Creates a player.

  ## Examples

      iex> create_player(%{field: value})
      {:ok, %Player{}}

      iex> create_player(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_player(attrs \\ %{}) do
    %Player{}
    |> Player.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a player.

  ## Examples

      iex> update_player(player, %{field: new_value})
      {:ok, %Player{}}

      iex> update_player(player, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_player(%Player{} = player, attrs) do
    player
    |> Player.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a player.

  ## Examples

      iex> delete_player(player)
      {:ok, %Player{}}

      iex> delete_player(player)
      {:error, %Ecto.Changeset{}}

  """
  def delete_player(%Player{} = player) do
    Repo.delete(player)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking player changes.

  ## Examples

      iex> change_player(player)
      %Ecto.Changeset{data: %Player{}}

  """
  def change_player(%Player{} = player, attrs \\ %{}) do
    Player.changeset(player, attrs)
  end
end
