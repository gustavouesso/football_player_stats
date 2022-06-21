defmodule FootballPlayerStatsWeb.PositionView do
  use FootballPlayerStatsWeb, :view
  alias FootballPlayerStatsWeb.PositionView

  def render("index.json", %{positions: positions}) do
    %{data: render_many(positions, PositionView, "position.json")}
  end

  def render("show.json", %{position: position}) do
    %{data: render_one(position, PositionView, "position.json")}
  end

  def render("position.json", %{position: position}) do
    %{id: position.id,
      name: position.name}
  end
end
