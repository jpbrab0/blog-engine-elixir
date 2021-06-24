defmodule BlogEngine.Authors do
  alias BlogEngine.Authors.Schemas.Author
  alias BlogEngine.Repo

  def get_author(author_id) do
    try do
      result = Repo.get_by!(Author, id: author_id)

      {:ok, result}
    rescue
      Ecto.NoResultsError ->
        {:error, "Non found result of this author id."}
    end
  end

  def create_author(params) do
    params
    |> Author.changeset()
    |> Repo.insert()
  end
end
