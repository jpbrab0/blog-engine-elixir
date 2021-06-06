defmodule BlogEngine.Post do 
  use Ecto.Schema

  import Ecto.Changeset

  @required [:title, :content, :author_name]
  @optional [:tags]

  schema "posts" do
    field :title, :string
    field :content, :string
    field :author_name, :string

    field :tags, :string

    timestamps()
  end

  def changeset(model \\ %__MODULE__{}, params) do 
    model
    |> cast(params, @required ++ @optional)
    |> validate_required(@required)
    |> validate_length(:author, min: 3)
  end
end
