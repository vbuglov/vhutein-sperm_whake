defmodule SpermWhaleWeb.MainLive do
  use SpermWhaleWeb, :live_view

  alias SpermWhaleWeb.Components.Sections.{CardBlock, VideoBannerSW, CommonForm, LearnMore}

  def mount(_params, _session, socket) do
    socket = assign(socket, items: with_index(item_list()), sperm_info: sperm_info())
    {:ok, socket}
  end

  defp item_list do
    [
      %{
        card_title: "Популяция",
        card_items: [
          "Численность 300 тысяч",
          "Имеет один из самых больших ареалов во всём животном мире",
          "Встречаются, в морях Тихого океана и в Баренцевом море",
          "Не совершают дальних переходов из одного полушария в другое"
        ],
        icon: ""
      },
      %{
        card_title: "Способности",
        card_items: [
          "Погружения до глубины свыше 2 км",
          "запасают до 40% кислорода в мышцах",
          "Использует высокочастотную и ультразвуковую эхолокацию",
          "Запасает 41 % кислорода, в то время как в лёгких — всего 9 %"
        ],
        icon: ""
      },
      %{
        card_title: "Культура",
        card_items: [
          "Был важнейшим объектом китобойного промысла",
          "Кашалотам посвящён роман Германа Мелвилла «Моби Дик",
          "Чрезвычайно высокое значение зубы кашалота имели на Фиджи",
          "Кашалотом часто нызывают подводные лодки"
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
            icon: "fal fa-feather-alt",
            title: "Домен:",
            text: "Эукариоты"
          },
          %{
            icon: "fal fa-crown",
            title: "Цартсво:",
            text: "Животные"
          },
          %{
            icon: "fal fa-hippo",
            title: "Класс:",
            text: "Млекопитающие"
          },
          %{
            icon: "fal fa-users",
            title: "Отряд",
            text: "Китопарнокопытные"
          },
          %{
            icon: "fal fa-house",
            title: "Семейство",
            text: "Кашалоттовые"
          },
          %{
            icon: "fal fa-whale",
            title: "Вид",
            text: "Кашалот"
          }
        ])
    }
  end
end
