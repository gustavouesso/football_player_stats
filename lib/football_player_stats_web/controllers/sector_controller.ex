defmodule FootballPlayerStatsWeb.SectorController do
  use FootballPlayerStatsWeb, :controller

  alias FootballPlayerStats.Roster
  alias FootballPlayerStats.Roster.Sector

  action_fallback FootballPlayerStatsWeb.FallbackController

  def index(conn, _params) do
    sectors = Roster.list_sectors()
    render(conn, "index.json", sectors: sectors)
  end

  def create(conn, %{"sector" => sector_params}) do
    with {:ok, %Sector{} = sector} <- Roster.create_sector(sector_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.sector_path(conn, :show, sector))
      |> render("show.json", sector: sector)
    end
  end

  def show(conn, %{"id" => id}) do
    sector = Roster.get_sector!(id)
    render(conn, "show.json", sector: sector)
  end

  def update(conn, %{"id" => id, "sector" => sector_params}) do
    sector = Roster.get_sector!(id)

    with {:ok, %Sector{} = sector} <- Roster.update_sector(sector, sector_params) do
      render(conn, "show.json", sector: sector)
    end
  end

  def delete(conn, %{"id" => id}) do
    sector = Roster.get_sector!(id)

    with {:ok, %Sector{}} <- Roster.delete_sector(sector) do
      send_resp(conn, :no_content, "")
    end
  end
end
