# TodoApp

To start your Phoenix server:

- Run `mix setup` to install and setup dependencies
- Adjust PostgreSQL credits in `/config/`
- Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## TODO

- [ ] After auth redirect to /tasks instead of to the main root
- [ ] Create a relation between user and tasks

dodac

mix ecto.gen.migration add_user_id_to_tasks

Otwórz plik migracji, który został wygenerowany w katalogu priv/repo/migrations. Powinien on mieć nazwę w stylu YYYYMMDDHHMMSS_add_user_id_to_tasks.exs.
W pliku migracji znajdź funkcję change/0 i dodaj kod, który dodaje kolumnę user_id do tabeli tasks. Przykładowy kod może wyglądać tak:
elixir
Copy code
defmodule MyApp.Repo.Migrations.AddUserIdToTasks do
use Ecto.Migration

def change do
alter table(:tasks) do
add :user_id, references(:users)
end
end
end
