defmodule PhxReactBabelWeb.PageController do
  use PhxReactBabelWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
