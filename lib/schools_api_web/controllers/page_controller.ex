defmodule SchoolsApiWeb.PageController do
  use SchoolsApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
