defmodule SpermWhaleWeb.Router do
  use SpermWhaleWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {SpermWhaleWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SpermWhaleWeb do
    pipe_through :browser

    live "/", MainLive, :index
    live "/planet", PlanetLive, :planet
    live "/statistic", StatisticLive, :statistic
    live "/structure", StructureLive, :structure
    live "/contacts", ContactsLive, :index
  end

  scope "/auth", SpermWhaleWeb do
    pipe_through :browser

    get "/", UserController, :log_in_user
  end

  # Other scopes may use custom stacks.
  # scope "/api", SpermWhaleWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser
      live_dashboard "/dashboard", metrics: SpermWhaleWeb.Telemetry
    end
  end
end
