# Blog Engine

## Presentation

This project is for study elixir, phoenix, postgres, ecto and anouthers technologies. 

And is builded with:
  - Elixir
  - Phoenix
    * Jason
    * Plug
  - Ecto
  - Docker-Compose

## Installing the project

First you need clone of the  project to your computer:

With https:

```bash
git clone https://github.com/jpbrab0/blog-engine-elixir.git
```

With ssh:

```bash
git clone git@github.com:jpbrab0/blog-engine-elixir.git
```

With Github CLI:

```bash
gh repo clone jpbrab0/blog-engine-elixir
```

## Setting up the database

To setup the database you need installed on your computer docker-compose and docker.

If you have installed it on your computer, you can run this command to create database with ``docker-compose``:

```bash
docker-compose up -d
```

## Running the project

- First you need:
  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

## Endpoints

Yet not have none route, but this routes is in development.

## Learn more about Phoenix

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

## Todo List

- [ ] View Authors
- [ ] View a single Author
- [x] Create Authors
- [ ] Edit Authors
- [ ] Delete Authors

-- --

- [ ] View Posts
- [ ] View a single Post
- [x] Create Posts
- [ ] Edit Posts
- [ ] Delete Posts


