defmodule FootballPlayerStats.RosterTest do
  use FootballPlayerStats.DataCase

  alias FootballPlayerStats.Roster

  describe "sectors" do
    alias FootballPlayerStats.Roster.Sector

    @valid_attrs %{name: "some name"}
    @update_attrs %{name: "some updated name"}
    @invalid_attrs %{name: nil}

    def sector_fixture(attrs \\ %{}) do
      {:ok, sector} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Roster.create_sector()

      sector
    end

    test "list_sectors/0 returns all sectors" do
      sector = sector_fixture()
      assert Roster.list_sectors() == [sector]
    end

    test "get_sector!/1 returns the sector with given id" do
      sector = sector_fixture()
      assert Roster.get_sector!(sector.id) == sector
    end

    test "create_sector/1 with valid data creates a sector" do
      assert {:ok, %Sector{} = sector} = Roster.create_sector(@valid_attrs)
      assert sector.name == "some name"
    end

    test "create_sector/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Roster.create_sector(@invalid_attrs)
    end

    test "update_sector/2 with valid data updates the sector" do
      sector = sector_fixture()
      assert {:ok, %Sector{} = sector} = Roster.update_sector(sector, @update_attrs)
      assert sector.name == "some updated name"
    end

    test "update_sector/2 with invalid data returns error changeset" do
      sector = sector_fixture()
      assert {:error, %Ecto.Changeset{}} = Roster.update_sector(sector, @invalid_attrs)
      assert sector == Roster.get_sector!(sector.id)
    end

    test "delete_sector/1 deletes the sector" do
      sector = sector_fixture()
      assert {:ok, %Sector{}} = Roster.delete_sector(sector)
      assert_raise Ecto.NoResultsError, fn -> Roster.get_sector!(sector.id) end
    end

    test "change_sector/1 returns a sector changeset" do
      sector = sector_fixture()
      assert %Ecto.Changeset{} = Roster.change_sector(sector)
    end
  end

  describe "positions" do
    alias FootballPlayerStats.Roster.Position

    @valid_attrs %{name: "some name"}
    @update_attrs %{name: "some updated name"}
    @invalid_attrs %{name: nil}

    def position_fixture(attrs \\ %{}) do
      {:ok, position} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Roster.create_position()

      position
    end

    test "list_positions/0 returns all positions" do
      position = position_fixture()
      assert Roster.list_positions() == [position]
    end

    test "get_position!/1 returns the position with given id" do
      position = position_fixture()
      assert Roster.get_position!(position.id) == position
    end

    test "create_position/1 with valid data creates a position" do
      assert {:ok, %Position{} = position} = Roster.create_position(@valid_attrs)
      assert position.name == "some name"
    end

    test "create_position/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Roster.create_position(@invalid_attrs)
    end

    test "update_position/2 with valid data updates the position" do
      position = position_fixture()
      assert {:ok, %Position{} = position} = Roster.update_position(position, @update_attrs)
      assert position.name == "some updated name"
    end

    test "update_position/2 with invalid data returns error changeset" do
      position = position_fixture()
      assert {:error, %Ecto.Changeset{}} = Roster.update_position(position, @invalid_attrs)
      assert position == Roster.get_position!(position.id)
    end

    test "delete_position/1 deletes the position" do
      position = position_fixture()
      assert {:ok, %Position{}} = Roster.delete_position(position)
      assert_raise Ecto.NoResultsError, fn -> Roster.get_position!(position.id) end
    end

    test "change_position/1 returns a position changeset" do
      position = position_fixture()
      assert %Ecto.Changeset{} = Roster.change_position(position)
    end
  end

  describe "players" do
    alias FootballPlayerStats.Roster.Player

    @valid_attrs %{height: "120.5", name: "some name", weight: "120.5"}
    @update_attrs %{height: "456.7", name: "some updated name", weight: "456.7"}
    @invalid_attrs %{height: nil, name: nil, weight: nil}

    def player_fixture(attrs \\ %{}) do
      {:ok, player} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Roster.create_player()

      player
    end

    test "list_players/0 returns all players" do
      player = player_fixture()
      assert Roster.list_players() == [player]
    end

    test "get_player!/1 returns the player with given id" do
      player = player_fixture()
      assert Roster.get_player!(player.id) == player
    end

    test "create_player/1 with valid data creates a player" do
      assert {:ok, %Player{} = player} = Roster.create_player(@valid_attrs)
      assert player.height == Decimal.new("120.5")
      assert player.name == "some name"
      assert player.weight == Decimal.new("120.5")
    end

    test "create_player/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Roster.create_player(@invalid_attrs)
    end

    test "update_player/2 with valid data updates the player" do
      player = player_fixture()
      assert {:ok, %Player{} = player} = Roster.update_player(player, @update_attrs)
      assert player.height == Decimal.new("456.7")
      assert player.name == "some updated name"
      assert player.weight == Decimal.new("456.7")
    end

    test "update_player/2 with invalid data returns error changeset" do
      player = player_fixture()
      assert {:error, %Ecto.Changeset{}} = Roster.update_player(player, @invalid_attrs)
      assert player == Roster.get_player!(player.id)
    end

    test "delete_player/1 deletes the player" do
      player = player_fixture()
      assert {:ok, %Player{}} = Roster.delete_player(player)
      assert_raise Ecto.NoResultsError, fn -> Roster.get_player!(player.id) end
    end

    test "change_player/1 returns a player changeset" do
      player = player_fixture()
      assert %Ecto.Changeset{} = Roster.change_player(player)
    end
  end
end
