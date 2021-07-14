defmodule BlogEngine.Authors do
  alias BlogEngine.Authors.Schemas.Author
  alias BlogEngine.Repo

  def get_author(author_id) do
    try do
      Repo.get!(Author, author_id)
    rescue
      Ecto.NoResultsError ->
        {:error, "Non found result of this author id."}
    end
  end

  # Params:
  #   name,
  #   email,
  #   nickname,
  #   bio,
  #   age

  def create_author(params) do
    params
    |> Author.changeset()
    |> Repo.insert()
  end
end
