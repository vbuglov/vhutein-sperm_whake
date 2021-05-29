defmodule SpermWhaleWeb.PageLive do
  use SpermWhaleWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, summ: 0)}
  end

  def render(assigns) do
    ~L"""
     <div>       My summ: <%= @summ %>       </div>       <div>
     <button class="bg-blue-500 text-white py-2 px-4 rounded hover:bg-blue-700" phx-click="inc">+1</button>
     <button class="bg-blue-500 text-white py-2 px-4 rounded hover:bg-blue-700" phx-click="mult">x10</button>
     <button class="bg-blue-500 text-white py-2 px-4 rounded hover:bg-blue-700" phx-click="dec">-1</button>
     <button class="bg-blue-500 text-white py-2 px-4 rounded hover:bg-blue-700" phx-click="div">/5</button>
     <br />
     <div>
      <div
      class="flex items-center justify-start p-4"
      x-data="{ toggle: '0' }"
      >
      <div
      class="relative h-6 w-12 rounded-full border-1 transition-all duration-600"
      :class="[toggle === '1' ? 'bg-green-400' : 'bg-gray-400']"
      >
      <label
      for="toggle"
      class="absolute left-0 w-6 h-6 mb-2 bg-white border-2 rounded-full cursor-pointer transform transition-all duration-100"
      :class="[toggle === '1' ? 'border-green-400 translate-x-full' : 'border-gray-400 translate-x-0']"
      ></label>
      <input type="hidden" name="toggle" value="off">
      <input
      type="checkbox" id="toggle" name="toggle" class="hidden"
      @click="toggle === '0' ? toggle = '1' : toggle = '0'"
      >
      </div>
      </div>
    </div>
    """
  end

 defp rnd(x) when is_integer(x), do: x
 defp rnd(x) when is_float(x), do: Float.round(x, 2)

  def handle_event("inc", _, socket) do
    summ = socket.assigns.summ + 1 |> rnd
    socket = assign(socket, summ: summ)
    {:noreply, socket}
  end

  def handle_event("mult", _, socket) do
    summ = socket.assigns.summ  * 10 |> rnd
    socket = assign(socket, summ: summ)
    {:noreply, socket}
  end


  def handle_event("dec", _, socket) do
    summ = socket.assigns.summ - 1 |> rnd
    socket = assign(socket, summ: summ)
    {:noreply, socket}
  end

  def handle_event("div", _, socket) do
    summ = socket.assigns.summ / 5 |> rnd
    socket = assign(socket, summ: summ)
    {:noreply, socket}
  end


end
