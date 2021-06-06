defmodule Live.Accounts.Authentication do
  @moduledoc false
  alias SpermWhale.Accounts.Defaults

  def sign_in(login: login, password: password) do
    with %{login: _, password: pwd} = user <- find_by_login(Defaults.users(), login),
         {:blocked, nil} <- {:blocked, find_by_login(Defaults.blocked(), login)},
         {:found, true} <- {:found, password == pwd} do
      {:ok, user}
    else
      {:blocked, _} -> {:error, "пользователь заблокирован"}
      {:found, _} -> {:error, "не правильный пароль"}
      _e -> {:error, "пользователь не найден"}
    end
  end

  defp find_by_login(list, login), do: Enum.find(list, &(&1.login == login))
end
