defmodule SpermWhaleWeb.PageLive do
  use SpermWhaleWeb, :live_view

  @impl true

  def render(assigns) do
    ~L"""
     <div>
        <%= live_render @socket, SpermWhale.Sections.VideoBannerSW, session: %{}, id: "VideoBannerSW"  %>
    </div>
    """
  end
end
