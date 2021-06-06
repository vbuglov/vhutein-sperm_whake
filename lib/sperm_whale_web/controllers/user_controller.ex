defmodule SpermWhaleWeb.UserController do
  use SpermWhaleWeb, :controller

  def log_in_user(conn, _params) do
    render(conn, "show.html", msg: "little")
  end
end
