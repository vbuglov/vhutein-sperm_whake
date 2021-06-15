defmodule SpermWhale.Tepmlates.HeaderComponent do
  use SpermWhaleWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, lang: "RU")
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <header class="w-full bg-white flex justify-between h-16 pr-20 pl-20 items-center top-0 shadow-md">
      <div
        class="logotype text-gray flex space-x-1 items-center"
      >
        <img height="40" width="40" src="/images/icons/logo.svg">
        <h1>Undersea</h1>
      </div>
      <nav class="">
        <ul class="text-gray-400 flex space-x-4">
          <li><a href="/">Главная</a></li>
          <li><a href="/statistic">Статистика</a></li>
          <li><a href="/planet">Ареал</a></li>
          <li><a href="/structure">Строение</a></li>
          <div style="width: 1px" class="h-100 bg-white"></div>
          <li>Rus</li>
        </ul>
      <nav>
    </header>
    """
  end
end
