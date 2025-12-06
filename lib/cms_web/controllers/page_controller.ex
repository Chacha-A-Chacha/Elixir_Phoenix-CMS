defmodule CmsWeb.PageController do
  use CmsWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
