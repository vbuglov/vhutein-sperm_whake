defmodule SpermWhaleWeb.Components.Sections.StatPopulation do
  use SpermWhaleWeb, :live_component

  alias SpermWhaleWeb.Components.Atoms.Title

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
