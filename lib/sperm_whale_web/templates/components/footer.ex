defmodule SpermWhale.Tepmlates.FooterComponent do
  use SpermWhaleWeb, :live_view

  def render(assigns) do
    ~L"""
    <footer
    style="
      display: flex;
      padding-left: 80px;
      height: 180px;
      background-color: #030110;
      align-items: center;
    "
    >
    <img
      style="height: 80px;margin-right: 150px"
      src="/images/favicon.ico"
      alt=""
    />
    <img
      style="height: 40px; margin-right: 400px"
      src="/images/vhu_logo.png"
      alt=""
    />
    <div style="display: flex">
      <ul style="list-style-type: none; margin-right: 40px; color: white">
        <li style="margin-bottom: 10px; font-size: 14px">
          <a href="/">Главная</a>
        </li>
        <li style="margin-bottom: 10px; font-size: 14px">
          <a href="/statistic">Статистика</a>
        </li>
        <li style="margin-bottom: 10px; font-size: 14px">
          <a href="/planet">Ареал</a>
        </li>
        <li style="margin-bottom: 10px; font-size: 14px">
          <a href="/structure">Строение</a>
        </li>
      </ul>
      <ul style="list-style-type: none; color: white">
        <li style="margin-bottom: 10px; font-size: 14px">+7923120120</li>
        <li style="margin-bottom: 10px; font-size: 14px">
          undersea@mail.ru
        </li>
        <li style="margin-bottom: 10px; font-size: 14px">
          London, WSV#800321
        </li>
      </ul>
    </div>
    </footer>

    """
  end
end
