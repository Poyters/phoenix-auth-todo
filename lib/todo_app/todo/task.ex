defmodule TodoApp.Todo.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :name, :string
    field :completed, :boolean, default: false
    belongs_to :user, TodoApp.Accounts.User

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:name, :completed, :user_id])
    |> validate_required([:name, :completed])
  end
end
