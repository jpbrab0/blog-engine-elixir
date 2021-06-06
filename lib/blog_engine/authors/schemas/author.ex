defmodule BlogEngine.Authors.Schemas.Author do
  use Ecto.Schema

  import Ecto.Changeset

  @required [:name, :email, :nickname, :bio, :age]
  @optional []

  @unique_fields [:email, :nickname]

  schema "authors" do
    field :name, :string
    field :email, :string
    field :nickname, :string
    field :bio, :string
    field :age, :integer

    timestamps()
  end

  def changeset(model \\ %__MODULE__{}, params) do
    model
    |> cast(params, @required ++ @optional)
    |> validate_required(@required)
    |> validate_format(:email, ~r/[^@ \t\r\n]+@[^@ \t\r\n]+\.[^@ \t\r\n]+/)
    |> validate_inclusion(:age, min: 18)
    |> unique_constraint(@unique_fields)
  end
end
