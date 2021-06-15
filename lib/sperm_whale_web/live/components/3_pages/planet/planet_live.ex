defmodule SpermWhaleWeb.PlanetLive do
  use SpermWhaleWeb, :live_view

  alias SpermWhaleWeb.Components.Atoms.Title

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, summ: 0)}
  end
end
