defmodule SpermWhaleWeb.Components.Sections.VideoBannerSW do
  use SpermWhaleWeb, :live_component

  alias SpermWhaleWeb.Components.Moleculs.IconText

  def mount(_params, _session, socket) do
    socket = assign(socket, sperm_info: %{status: %{}})
    {:ok, socket}
  end
end
