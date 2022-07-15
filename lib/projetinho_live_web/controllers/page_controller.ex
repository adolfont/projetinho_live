defmodule ProjetinhoLiveWeb.PageController do
  use ProjetinhoLiveWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
