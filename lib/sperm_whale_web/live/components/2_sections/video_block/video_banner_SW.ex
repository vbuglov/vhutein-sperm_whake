defmodule SpermWhaleWeb.Components.Sections.VideoBannerSW do
  use SpermWhaleWeb, :live_component

  alias SpermWhaleWeb.Components.Moleculs.IconText
  alias SpermWhaleWeb.CommonHelper

  def mount(_params, _session, socket) do
    socket = assign(socket, card_type: nil, items: [], sperm_info: %{status: %{}})
    {:ok, socket}
  end
end

# <%= Enum.map([1,2,3,4], fn item -> %>
# <%= live_component @socket, IconText, id: random_key(), props: @sperm_info.status, class: "mb-4" %>
# <%=end ) %>

# @sperm_info.classification
# <% IO.inspect(@sperm_info) %> ##@socket.classification

# <%= for i <- @sperm_info.classification do %>
# <%= live_component @socket, IconText, id: "sperm_info_classification_#{i}", props: @sperm_info.status, class: "mb-4" %>
# <% end %>
