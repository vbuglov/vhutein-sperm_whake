defmodule SpermWhaleWeb.Components.Moleculs.IconText do
  use SpermWhaleWeb, :live_component

  @optionals ~w(class text_class)a

  def mount(_params, _session, socket) do
    socket = assign(socket, classification: %{}, class: nil, text_class: nil)
    {:ok, socket}
  end

  def update(assigns, socket) do
    {:ok, assign(socket, add_optional(assigns, @optionals))}
  end
end

# <span <%= if (@props.text_class) do "class=text-red-200" end %>><%= @props.status.text %></span>
