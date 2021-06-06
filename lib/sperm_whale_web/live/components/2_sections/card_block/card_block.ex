defmodule SpermWhaleWeb.Components.Sections.CardBlock do
  use SpermWhaleWeb, :live_component

  def mount(_params, _session, socket) do
    socket = assign(socket, card_type: nil, items: [])
    {:ok, socket}
  end

  # def update(%{items: items}, socket) do
  #   {:ok, assign(socket, items: items)}
  # end

  def update(assigns, socket) do
    {:ok, assign(socket, assigns)}
  end
end
