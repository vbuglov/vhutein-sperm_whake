defmodule SpermWhaleWeb.Components.Sections.LearnMore do
  use SpermWhaleWeb, :live_component

  alias SpermWhaleWeb.Components.Atoms.Title

  def mount(_params, _session, socket) do
    socket = assign(socket, card_type: nil)
    {:ok, socket}
  end
end
