defmodule FootballPlayerStats.Repo do
  use Ecto.Repo,
    otp_app: :football_player_stats,
    adapter: Ecto.Adapters.Postgres
end
