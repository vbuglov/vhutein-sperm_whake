defmodule SpermWhaleWeb.Components.Sections.CommonForm do
  use SpermWhaleWeb, :live_component

  alias SpermWhaleWeb.Components.Atoms.Title

  def mount(_params, _session, socket) do
    socket = assign(socket, card_type: nil)
    {:ok, socket}
  end

  def update(assigns, socket) do
    {:ok, assign(socket, assigns)}
  end
end
