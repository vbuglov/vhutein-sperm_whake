defmodule SpermWhale.Tepmlates.FooterComponent do
  use SpermWhaleWeb, :live_view

  def render(assigns) do
    ~L"""
    <footer class="w-full h-32 text-white bg-gray-800 px-6">
      <div class="h-24 flex w-full">
        <div class="footer_block">1</div>
        <div class="footer_block">2</div>
        <div class="footer_block">3</div>
      </div>
      <p class="m-auto text-center text-sm">2021 copyright</p>
    </footer>
    """
  end
end
