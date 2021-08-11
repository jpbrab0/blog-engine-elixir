defmodule BlogEngineWeb.Router do
  use BlogEngineWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    forward "/graphql", Absinthe.Plug, schema: BlogEngineWeb.Schema

    forward "/playground", Absinthe.Plug.GraphiQL, schema: BlogEngineWeb.Schema
  end
end
