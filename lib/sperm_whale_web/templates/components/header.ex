defmodule SpermWhale.Tepmlates.HeaderComponent do
  use SpermWhaleWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, [lang: "RU"])
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <header class="w-full bg-red-900 flex justify-between h-20 pr-20 pl-20 items-center">
      <div
        class="logotype text-white"
      >
      logotype
      </div>
      <nav class="">
        <ul class="text-white flex space-x-4">
          <li>Главная</li>
          <li>Статистика</li>
          <li>Ареал</li>
          <li>Строение</li>
          <div style="width: 1px" class="h-100 bg-white"></div>
          <li>Rus</li>
        </ul>
      <nav>
    </header>
    """
  end
end
