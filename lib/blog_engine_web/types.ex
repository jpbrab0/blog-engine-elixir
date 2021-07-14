defmodule BlogEngineWeb.Schema.Types do
  use Absinthe.Schema.Notation

  object :author do
    field :id, :id
    field :name, :string
    field :email, :string
    field :nickname, :string
    field :bio, :string
    field :age, :integer
  end

  input_object :post_input do
    field :name, :string
    field :email, :string
    field :nickname, :string
    field :bio, :string
    field :age, :integer
  end
end
