defmodule SpermWhaleWeb.StructureLive do
  use SpermWhaleWeb, :live_view

  alias SpermWhaleWeb.Components.Atoms.Title

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, summ: 0)}
  end

  def handle_event("update_chart_data_10", _, socket) do
    {:noreply, push_event(socket, "new_chart_data", %{data: 10})}
  end

  def handle_event("update_chart_data_25", _, socket) do
    {:noreply, push_event(socket, "new_chart_data", %{data: 20})}
  end

  def handle_event("update_chart_data_50", _, socket) do
    {:noreply, push_event(socket, "new_chart_data", %{data: 50})}
  end
end
