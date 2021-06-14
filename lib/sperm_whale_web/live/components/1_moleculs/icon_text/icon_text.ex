defmodule SpermWhaleWeb.Components.Moleculs.IconText do
  use SpermWhaleWeb, :live_component

  def mount(_params, _session, socket) do
    socket = assign(socket, card_type: nil, props: %{}, class: "")
    {:ok, socket}
  end
end
