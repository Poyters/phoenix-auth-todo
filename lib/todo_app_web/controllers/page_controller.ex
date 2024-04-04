defmodule TodoAppWeb.PageController do
  use TodoAppWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(:moved_permanently)
    |> redirect(to: ~p"/tasks")
  end

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end
end
