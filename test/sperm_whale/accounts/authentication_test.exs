defmodule Live.Accounts.AuthenticationTest do
  use ExUnit.Case

  describe "test users: " do
    test "valid user" do
      assert {:ok, _} = Live.Accounts.Authentication.sign_in(login: "admin", password: "secret")
    end

    test "valid user and invalid pass" do
      assert {:error, "не правильный пароль"} ==
               Live.Accounts.Authentication.sign_in(login: "admin", password: "secretx")
    end

    test "invalid user" do
      assert {:error, "пользователь не найден"} ==
               Live.Accounts.Authentication.sign_in(login: "adminx", password: "secretx")
    end

    test "blocked user" do
      assert {:error, "пользователь заблокирован"} ==
               Live.Accounts.Authentication.sign_in(login: "whale", password: "secretx")
    end
  end
end
