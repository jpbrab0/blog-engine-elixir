defmodule BlogEngineWeb.Router do
  use BlogEngineWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BlogEngineWeb do
    pipe_through :api
  end
end
