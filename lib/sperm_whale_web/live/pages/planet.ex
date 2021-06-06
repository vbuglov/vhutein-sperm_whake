defmodule SpermWhaleWeb.PageLive.Planet do
  use SpermWhaleWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, summ: 0)}
  end

  def render(assigns) do
    ~L"""
     <div>
    </div>
    """
  end
end
