defmodule SpermWhale.Accounts.Defaults do
  def users do
    [
      %{login: "admin", password: "secret"},
      %{login: "whale", password: "lolllll"}
    ]
  end

  def blocked do
    [
      %{login: "whale"}
    ]
  end
end
