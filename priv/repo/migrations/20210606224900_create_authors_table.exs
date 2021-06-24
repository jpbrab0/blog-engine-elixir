defmodule BlogEngine.Repo.Migrations.CreateAuthorsTable do
  use Ecto.Migration

  def change do
    create table(:authors) do
      add :name, :string
      add :email, :string
      add :nickname, :string
      add :bio, :string
      add :age, :integer

      timestamps()
    end
    create unique_index(:authors, [:email])
    create unique_index(:authors, [:nickname])
  end
end
