defmodule FootballPlayerStatsWeb.SectorControllerTest do
  use FootballPlayerStatsWeb.ConnCase

  alias FootballPlayerStats.Roster
  alias FootballPlayerStats.Roster.Sector

  @create_attrs %{
    name: "some name"
  }
  @update_attrs %{
    name: "some updated name"
  }
  @invalid_attrs %{name: nil}

  def fixture(:sector) do
    {:ok, sector} = Roster.create_sector(@create_attrs)
    sector
  end

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all sectors", %{conn: conn} do
      conn = get(conn, Routes.sector_path(conn, :index))
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create sector" do
    test "renders sector when data is valid", %{conn: conn} do
      conn = post(conn, Routes.sector_path(conn, :create), sector: @create_attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, Routes.sector_path(conn, :show, id))

      assert %{
               "id" => id,
               "name" => "some name"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.sector_path(conn, :create), sector: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update sector" do
    setup [:create_sector]

    test "renders sector when data is valid", %{conn: conn, sector: %Sector{id: id} = sector} do
      conn = put(conn, Routes.sector_path(conn, :update, sector), sector: @update_attrs)
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, Routes.sector_path(conn, :show, id))

      assert %{
               "id" => id,
               "name" => "some updated name"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, sector: sector} do
      conn = put(conn, Routes.sector_path(conn, :update, sector), sector: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete sector" do
    setup [:create_sector]

    test "deletes chosen sector", %{conn: conn, sector: sector} do
      conn = delete(conn, Routes.sector_path(conn, :delete, sector))
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, Routes.sector_path(conn, :show, sector))
      end
    end
  end

  defp create_sector(_) do
    sector = fixture(:sector)
    %{sector: sector}
  end
end
