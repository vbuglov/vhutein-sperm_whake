defmodule SpermWhaleWeb.MainLive do
  use SpermWhaleWeb, :live_view

  alias SpermWhaleWeb.Components.Sections.CardBlock
  alias SpermWhaleWeb.Components.Sections.VideoBannerSW
  alias SpermWhaleWeb.Components.Sections.CommonForm
  alias SpermWhaleWeb.Components.Sections.LearnMore

  def mount(_params, _session, socket) do
    socket = assign(socket, items: with_index(item_list()), sperm_info: sperm_info())
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

  def sperm_info do
    %{
      status: %{
        icon: "fal fa-skull",
        title: "Статус",
        text: "на грани вымирания"
      },
      classification:
        with_index([
          %{
            icon: "fab fa-accessible-icon",
            title: "Домен:",
            text: "Эукариоты"
          },
          %{
            icon: "fab fa-accessible-icon",
            title: "Цартсво:",
            text: "Животные"
          },
          %{
            icon: "fab fa-accessible-icon",
            title: "Класс:",
            text: "Млекопитающие"
          },
          %{
            icon: "fab fa-accessible-icon",
            title: "Отряд",
            text: "Китопарнокопытные"
          },
          %{
            icon: "fab fa-accessible-icon",
            title: "Семейство",
            text: "Кашалоттовые"
          },
          %{
            icon: "fab fa-accessible-icon",
            title: "Вид",
            text: "Кашалотя"
          }
        ])
    }
  end
end
