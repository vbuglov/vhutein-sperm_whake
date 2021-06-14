defmodule SpermWhaleWeb.Components.Atoms.Title do
  use SpermWhaleWeb, :live_component

  def mount(_params, _session, socket) do
    socket = assign(socket, props: %{})
    {:ok, socket}
  end
end
