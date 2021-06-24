defmodule BlogEngine.Repo.Migrations.CreatePostsTable do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :content, :string
      add :author_name, :string

      add :tags, :string

      timestamps()
    end
  end
end
