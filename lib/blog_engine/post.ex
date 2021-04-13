defmodule BlogEngine.Post do 
  use Ecto.Schema

  schema "posts" do 
    field :title, :string
  end
end
