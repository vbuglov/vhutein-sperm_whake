defmodule SpermWhaleWeb.MainLive do
  use SpermWhaleWeb, :live_view

  alias SpermWhaleWeb.Components.Sections.CardBlock

  alias SpermWhaleWeb.Components.Sections.VideoBannerSW

  def mount(_params, _session, socket) do
    socket = assign(socket, items: with_index(item_list()))
    {:ok, socket}
  end

  defp item_list do
    [
      %{
        card_title: "Популяция",
        card_items: [
          "Численность 300 - 400 тысяч",
          "Имеет один из самых больших ареалов во всём животном мире",
          "Встречаются, в морях Тихого океана и в Баренцевом море",
          "Не совершают дальних переходов из одного полушария в другое"
        ],
        icon: ""
      },
      %{
        card_title: "Способности",
        card_items: [
          "Численность 300 - 400 тысяч",
          "Имеет один из самых больших ареалов во всём животном мире",
          "Встречаются, в морях Тихого океана и в Баренцевом море",
          "Не совершают дальних переходов из одного полушария в другое"
        ],
        icon: ""
      },
      %{
        card_title: "Культура",
        card_items: [
          "Численность 300 - 400 тысяч",
          "Имеет один из самых больших ареалов во всём животном мире",
          "Встречаются, в морях Тихого океана и в Баренцевом море",
          "Не совершают дальних переходов из одного полушария в другое"
        ],
        icon: ""
      }
    ]
  end
end
