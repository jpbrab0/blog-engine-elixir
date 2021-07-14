defmodule BlogEngineWeb.Schema do

  @moduledoc """
  Module to configure the graphql
  """

  use Absinthe.Schema

  alias BlogEngine.Authors

  # Importing types from another file.
  import_types(BlogEngineWeb.Schema.Types)

  # Author Query's

  # Making query for get author by id and creating the author object.
  query do
    field :get_author_by_id, :author do
      arg(:id, non_null(:id))

      resolve(fn _entity, %{id: id}, _context ->
        {:ok, Authors.get_author(id)}
      end)
    end
  end

  # Creating mutation for create in the database a new author.
  mutation do
    field :create_author, :author do
      arg(:input, :post_input)
      resolve(fn _entity, %{input: post_params}, _context ->
        Authors.create_author(post_params)
      end)
    end
  end
end
