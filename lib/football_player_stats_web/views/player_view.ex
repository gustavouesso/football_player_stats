defmodule FootballPlayerStatsWeb.PlayerView do
  use FootballPlayerStatsWeb, :view
  alias FootballPlayerStatsWeb.PlayerView

  def render("index.json", %{players: players}) do
    %{data: render_many(players, PlayerView, "player.json")}
  end

  def render("show.json", %{player: player}) do
    %{data: render_one(player, PlayerView, "player.json")}
  end

  def render("player.json", %{player: player}) do
    %{id: player.id,
      name: player.name,
      height: player.height,
      weight: player.weight}
  end
end
